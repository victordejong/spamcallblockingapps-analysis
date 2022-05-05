package retrofit2.mock;

import java.io.IOException;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;
import okhttp3.Request;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;
/* loaded from: classes3-dex2jar.jar:retrofit2/mock/Calls.class */
public final class Calls {

    /* loaded from: classes3-dex2jar.jar:retrofit2/mock/Calls$DeferredCall.class */
    static final class DeferredCall<T> implements Call<T> {
        private final Callable<Call<T>> callable;
        private Call<T> delegate;

        DeferredCall(Callable<Call<T>> callable) {
            this.callable = callable;
        }

        private Call<T> getDelegate() {
            Call<T> call;
            synchronized (this) {
                Call<T> call2 = this.delegate;
                call = call2;
                if (call2 == null) {
                    try {
                        call = this.callable.call();
                    } catch (IOException e) {
                        call = Calls.failure(e);
                    } catch (Exception e2) {
                        throw new IllegalStateException("Callable threw unrecoverable exception", e2);
                    }
                    this.delegate = call;
                }
            }
            return call;
        }

        @Override // retrofit2.Call
        public void cancel() {
            getDelegate().cancel();
        }

        @Override // retrofit2.Call
        public Call<T> clone() {
            return new DeferredCall(this.callable);
        }

        @Override // retrofit2.Call
        public void enqueue(Callback<T> callback) {
            getDelegate().enqueue(callback);
        }

        @Override // retrofit2.Call
        public Response<T> execute() throws IOException {
            return getDelegate().execute();
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            return getDelegate().isCanceled();
        }

        @Override // retrofit2.Call
        public boolean isExecuted() {
            return getDelegate().isExecuted();
        }

        @Override // retrofit2.Call
        public Request request() {
            return getDelegate().request();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:retrofit2/mock/Calls$FakeCall.class */
    public static final class FakeCall<T> implements Call<T> {
        private final IOException error;
        private final Response<T> response;
        private final AtomicBoolean canceled = new AtomicBoolean();
        private final AtomicBoolean executed = new AtomicBoolean();

        FakeCall(@Nullable Response<T> response, @Nullable IOException iOException) {
            if ((response == null) == (iOException == null)) {
                throw new AssertionError("Only one of response or error can be set.");
            }
            this.response = response;
            this.error = iOException;
        }

        @Override // retrofit2.Call
        public void cancel() {
            this.canceled.set(true);
        }

        @Override // retrofit2.Call
        public Call<T> clone() {
            return new FakeCall(this.response, this.error);
        }

        @Override // retrofit2.Call
        public void enqueue(Callback<T> callback) {
            if (callback == null) {
                throw new NullPointerException("callback == null");
            } else if (!this.executed.compareAndSet(false, true)) {
                throw new IllegalStateException("Already executed");
            } else if (this.canceled.get()) {
                callback.onFailure(this, new IOException("canceled"));
            } else if (this.response != null) {
                callback.onResponse(this, this.response);
            } else {
                callback.onFailure(this, this.error);
            }
        }

        @Override // retrofit2.Call
        public Response<T> execute() throws IOException {
            if (!this.executed.compareAndSet(false, true)) {
                throw new IllegalStateException("Already executed");
            } else if (this.canceled.get()) {
                throw new IOException("canceled");
            } else if (this.response != null) {
                return this.response;
            } else {
                throw this.error;
            }
        }

        @Override // retrofit2.Call
        public boolean isCanceled() {
            return this.canceled.get();
        }

        @Override // retrofit2.Call
        public boolean isExecuted() {
            return this.executed.get();
        }

        @Override // retrofit2.Call
        public Request request() {
            return this.response != null ? this.response.raw().request() : new Request.Builder().url("http://localhost").build();
        }
    }

    private Calls() {
        throw new AssertionError("No instances.");
    }

    public static <T> Call<T> defer(Callable<Call<T>> callable) {
        return new DeferredCall(callable);
    }

    public static <T> Call<T> failure(IOException iOException) {
        return new FakeCall(null, iOException);
    }

    public static <T> Call<T> response(T t) {
        return new FakeCall(Response.success(t), null);
    }

    public static <T> Call<T> response(Response<T> response) {
        return new FakeCall(response, null);
    }
}
