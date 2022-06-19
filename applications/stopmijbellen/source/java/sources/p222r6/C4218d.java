package p222r6;

import com.google.android.gms.tasks.OnCanceledListener;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.OnSuccessListener;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;
import p211q6.CallableC4156a;
/* renamed from: r6.d */
/* loaded from: classes-dex2jar.jar:r6/d.class */
public class C4218d {

    /* renamed from: d */
    public static final Map<String, C4218d> f13211d = new HashMap();

    /* renamed from: e */
    public static final Executor f13212e = ExecutorC4217c.f13210a;

    /* renamed from: a */
    public final ExecutorService f13213a;

    /* renamed from: b */
    public final C4225i f13214b;

    /* renamed from: c */
    public Task<C4221e> f13215c = null;

    /* renamed from: r6.d$b */
    /* loaded from: classes-dex2jar.jar:r6/d$b.class */
    public static class C4220b<TResult> implements OnSuccessListener<TResult>, OnFailureListener, OnCanceledListener {

        /* renamed from: a */
        public final CountDownLatch f13216a = new CountDownLatch(1);

        public C4220b(C4219a c4219a) {
        }

        @Override // com.google.android.gms.tasks.OnCanceledListener
        public void onCanceled() {
            this.f13216a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnFailureListener
        public void onFailure(Exception exc) {
            this.f13216a.countDown();
        }

        @Override // com.google.android.gms.tasks.OnSuccessListener
        public void onSuccess(TResult tresult) {
            this.f13216a.countDown();
        }
    }

    public C4218d(ExecutorService executorService, C4225i c4225i) {
        this.f13213a = executorService;
        this.f13214b = c4225i;
    }

    /* renamed from: a */
    public static <TResult> TResult m1285a(Task<TResult> task, long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        C4220b c4220b = new C4220b(null);
        Executor executor = f13212e;
        task.addOnSuccessListener(executor, c4220b);
        task.addOnFailureListener(executor, c4220b);
        task.addOnCanceledListener(executor, c4220b);
        if (c4220b.f13216a.await(j, timeUnit)) {
            if (!task.isSuccessful()) {
                throw new ExecutionException(task.getException());
            }
            return task.getResult();
        }
        throw new TimeoutException("Task await timed out.");
    }

    /* renamed from: b */
    public Task<C4221e> m1284b() {
        Task<C4221e> task;
        synchronized (this) {
            Task<C4221e> task2 = this.f13215c;
            if (task2 == null || (task2.isComplete() && !this.f13215c.isSuccessful())) {
                ExecutorService executorService = this.f13213a;
                final C4225i c4225i = this.f13214b;
                Objects.requireNonNull(c4225i);
                this.f13215c = Tasks.call(executorService, new Callable() { // from class: r6.b
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        C4221e c4221e;
                        FileInputStream fileInputStream;
                        Throwable th;
                        C4225i c4225i2 = C4225i.this;
                        synchronized (c4225i2) {
                            try {
                                fileInputStream = c4225i2.f13236a.openFileInput(c4225i2.f13237b);
                            } catch (FileNotFoundException | JSONException e) {
                                fileInputStream = null;
                            } catch (Throwable th2) {
                                th = th2;
                                fileInputStream = null;
                            }
                            try {
                                int available = fileInputStream.available();
                                byte[] bArr = new byte[available];
                                fileInputStream.read(bArr, 0, available);
                                C4221e m1282a = C4221e.m1282a(new JSONObject(new String(bArr, "UTF-8")));
                                fileInputStream.close();
                                c4221e = m1282a;
                            } catch (FileNotFoundException | JSONException e2) {
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                c4221e = null;
                                return c4221e;
                            } catch (Throwable th3) {
                                th = th3;
                                if (fileInputStream != null) {
                                    fileInputStream.close();
                                }
                                throw th;
                            }
                        }
                        return c4221e;
                    }
                });
            }
            task = this.f13215c;
        }
        return task;
    }

    /* renamed from: c */
    public Task<C4221e> m1283c(final C4221e c4221e) {
        return Tasks.call(this.f13213a, new CallableC4156a(this, c4221e, 1)).onSuccessTask(this.f13213a, new SuccessContinuation() { // from class: r6.a
            @Override // com.google.android.gms.tasks.SuccessContinuation
            public final Task then(Object obj) {
                C4218d c4218d = C4218d.this;
                boolean z = r5;
                C4221e c4221e2 = c4221e;
                Void r0 = (Void) obj;
                Objects.requireNonNull(c4218d);
                if (z) {
                    synchronized (c4218d) {
                        c4218d.f13215c = Tasks.forResult(c4221e2);
                    }
                }
                return Tasks.forResult(c4221e2);
            }
        });
    }
}
