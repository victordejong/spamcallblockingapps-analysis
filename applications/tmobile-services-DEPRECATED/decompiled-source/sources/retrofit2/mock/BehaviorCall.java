package retrofit2.mock;

import java.io.IOException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Request;
import okio.Timeout;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:retrofit2/mock/BehaviorCall.class */
public final class BehaviorCall<T> implements Call<T> {
    final ExecutorService backgroundExecutor;
    final NetworkBehavior behavior;
    volatile boolean canceled;
    final Call<T> delegate;
    @GuardedBy
    private boolean executed;
    @Nullable
    private volatile Future<?> task;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: retrofit2.mock.BehaviorCall$1 */
    /* loaded from: classes2-dex2jar.jar:retrofit2/mock/BehaviorCall$1.class */
    public class RunnableC24701 implements Runnable {
        final /* synthetic */ Callback val$callback;

        RunnableC24701(Callback callback) {
            this.val$callback = callback;
        }

        boolean delaySleep() {
            long calculateDelay = BehaviorCall.this.behavior.calculateDelay(TimeUnit.MILLISECONDS);
            if (calculateDelay <= 0) {
                return true;
            }
            try {
                Thread.sleep(calculateDelay);
                return true;
            } catch (InterruptedException e) {
                this.val$callback.onFailure(BehaviorCall.this, new IOException("canceled", e));
                return false;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (BehaviorCall.this.canceled) {
                this.val$callback.onFailure(BehaviorCall.this, new IOException("canceled"));
            } else if (BehaviorCall.this.behavior.calculateIsFailure()) {
                if (delaySleep()) {
                    Callback callback = this.val$callback;
                    BehaviorCall behaviorCall = BehaviorCall.this;
                    callback.onFailure(behaviorCall, behaviorCall.behavior.failureException());
                }
            } else if (!BehaviorCall.this.behavior.calculateIsError()) {
                BehaviorCall.this.delegate.enqueue(new Callback<T>() { // from class: retrofit2.mock.BehaviorCall.1.1
                    @Override // retrofit2.Callback
                    public void onFailure(Call<T> call, Throwable th) {
                        if (RunnableC24701.this.delaySleep()) {
                            RunnableC24701.this.val$callback.onFailure(call, th);
                        }
                    }

                    @Override // retrofit2.Callback
                    public void onResponse(Call<T> call, Response<T> response) {
                        if (RunnableC24701.this.delaySleep()) {
                            RunnableC24701.this.val$callback.onResponse(call, response);
                        }
                    }
                });
            } else if (delaySleep()) {
                Callback callback2 = this.val$callback;
                BehaviorCall behaviorCall2 = BehaviorCall.this;
                callback2.onResponse(behaviorCall2, behaviorCall2.behavior.createErrorResponse());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public BehaviorCall(NetworkBehavior networkBehavior, ExecutorService executorService, Call<T> call) {
        this.behavior = networkBehavior;
        this.backgroundExecutor = executorService;
        this.delegate = call;
    }

    @Override // retrofit2.Call
    public void cancel() {
        this.canceled = true;
        Future<?> future = this.task;
        if (future != null) {
            future.cancel(true);
        }
    }

    @Override // retrofit2.Call
    public Call<T> clone() {
        return new BehaviorCall(this.behavior, this.backgroundExecutor, this.delegate.clone());
    }

    @Override // retrofit2.Call
    public void enqueue(Callback<T> callback) {
        if (callback != null) {
            synchronized (this) {
                if (!this.executed) {
                    this.executed = true;
                } else {
                    throw new IllegalStateException("Already executed");
                }
            }
            this.task = this.backgroundExecutor.submit(new RunnableC24701(callback));
            return;
        }
        throw new NullPointerException("callback == null");
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        enqueue(new Callback<T>() { // from class: retrofit2.mock.BehaviorCall.2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call, Throwable th) {
                atomicReference2.set(th);
                countDownLatch.countDown();
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call, Response<T> response) {
                atomicReference.set(response);
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            Response<T> response = (Response) atomicReference.get();
            if (response != null) {
                return response;
            }
            Throwable th = (Throwable) atomicReference2.get();
            if (th instanceof RuntimeException) {
                throw ((RuntimeException) th);
            } else if (th instanceof IOException) {
                throw ((IOException) th);
            } else {
                throw new RuntimeException(th);
            }
        } catch (InterruptedException e) {
            throw new IOException("canceled", e);
        }
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        return this.canceled;
    }

    @Override // retrofit2.Call
    public boolean isExecuted() {
        boolean z;
        synchronized (this) {
            z = this.executed;
        }
        return z;
    }

    @Override // retrofit2.Call
    public Request request() {
        return this.delegate.request();
    }

    @Override // retrofit2.Call
    public Timeout timeout() {
        return this.delegate.timeout();
    }
}
