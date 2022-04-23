package retrofit2;

import java.io.IOException;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.MediaType;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.Buffer;
import okio.BufferedSource;
import okio.ForwardingSource;
import okio.Okio;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:retrofit2/OkHttpCall.class */
public final class OkHttpCall<T> implements Call<T> {
    @Nullable
    private final Object[] args;
    private volatile boolean canceled;
    @GuardedBy("this")
    @Nullable
    private Throwable creationFailure;
    @GuardedBy("this")
    private boolean executed;
    @GuardedBy("this")
    @Nullable
    private Call rawCall;
    private final ServiceMethod<T, ?> serviceMethod;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:retrofit2/OkHttpCall$ExceptionCatchingRequestBody.class */
    public static final class ExceptionCatchingRequestBody extends ResponseBody {
        private final ResponseBody delegate;
        IOException thrownException;

        ExceptionCatchingRequestBody(ResponseBody responseBody) {
            this.delegate = responseBody;
        }

        @Override // okhttp3.ResponseBody, java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            this.delegate.close();
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.delegate.contentLength();
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.delegate.contentType();
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            return Okio.buffer(new ForwardingSource(this.delegate.source()) { // from class: retrofit2.OkHttpCall.ExceptionCatchingRequestBody.1
                @Override // okio.ForwardingSource, okio.Source
                public long read(Buffer buffer, long j) throws IOException {
                    try {
                        return super.read(buffer, j);
                    } catch (IOException e) {
                        ExceptionCatchingRequestBody.this.thrownException = e;
                        throw e;
                    }
                }
            });
        }

        void throwIfCaught() throws IOException {
            if (this.thrownException != null) {
                throw this.thrownException;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:retrofit2/OkHttpCall$NoContentResponseBody.class */
    public static final class NoContentResponseBody extends ResponseBody {
        private final long contentLength;
        private final MediaType contentType;

        NoContentResponseBody(MediaType mediaType, long j) {
            this.contentType = mediaType;
            this.contentLength = j;
        }

        @Override // okhttp3.ResponseBody
        public long contentLength() {
            return this.contentLength;
        }

        @Override // okhttp3.ResponseBody
        public MediaType contentType() {
            return this.contentType;
        }

        @Override // okhttp3.ResponseBody
        public BufferedSource source() {
            throw new IllegalStateException("Cannot read raw response body of a converted body.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OkHttpCall(ServiceMethod<T, ?> serviceMethod, @Nullable Object[] objArr) {
        this.serviceMethod = serviceMethod;
        this.args = objArr;
    }

    private Call createRawCall() throws IOException {
        Call newCall = this.serviceMethod.callFactory.newCall(this.serviceMethod.toRequest(this.args));
        if (newCall != null) {
            return newCall;
        }
        throw new NullPointerException("Call.Factory returned null.");
    }

    @Override // retrofit2.Call
    public void cancel() {
        Call call;
        this.canceled = true;
        synchronized (this) {
            call = this.rawCall;
        }
        if (call != null) {
            call.cancel();
        }
    }

    @Override // retrofit2.Call
    public OkHttpCall<T> clone() {
        return new OkHttpCall<>(this.serviceMethod, this.args);
    }

    @Override // retrofit2.Call
    public void enqueue(final Callback<T> callback) {
        Call call;
        Throwable th;
        Utils.checkNotNull(callback, "callback == null");
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            Call call2 = this.rawCall;
            Throwable th2 = this.creationFailure;
            call = call2;
            th = th2;
            if (call2 == null) {
                call = call2;
                th = th2;
                if (th2 == null) {
                    call = createRawCall();
                    this.rawCall = call;
                    th = th2;
                }
            }
        }
        if (th != null) {
            callback.onFailure(this, th);
            return;
        }
        if (this.canceled) {
            call.cancel();
        }
        call.enqueue(new Callback() { // from class: retrofit2.OkHttpCall.1
            private void callFailure(Throwable th3) {
                try {
                    callback.onFailure(OkHttpCall.this, th3);
                } catch (Throwable th4) {
                    th4.printStackTrace();
                }
            }

            private void callSuccess(Response<T> response) {
                try {
                    callback.onResponse(OkHttpCall.this, response);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onFailure(Call call3, IOException iOException) {
                try {
                    callback.onFailure(OkHttpCall.this, iOException);
                } catch (Throwable th3) {
                    th3.printStackTrace();
                }
            }

            @Override // okhttp3.Callback
            public void onResponse(Call call3, Response response) throws IOException {
                try {
                    callSuccess(OkHttpCall.this.parseResponse(response));
                } catch (Throwable th3) {
                    callFailure(th3);
                }
            }
        });
    }

    @Override // retrofit2.Call
    public Response<T> execute() throws IOException {
        Call call;
        synchronized (this) {
            if (this.executed) {
                throw new IllegalStateException("Already executed.");
            }
            this.executed = true;
            if (this.creationFailure == null) {
                Call call2 = this.rawCall;
                call = call2;
                if (call2 == null) {
                    try {
                        call = createRawCall();
                        this.rawCall = call;
                    } catch (IOException | RuntimeException e) {
                        this.creationFailure = e;
                        throw e;
                    }
                }
            } else if (this.creationFailure instanceof IOException) {
                throw ((IOException) this.creationFailure);
            } else {
                throw ((RuntimeException) this.creationFailure);
            }
        }
        if (this.canceled) {
            call.cancel();
        }
        return parseResponse(call.execute());
    }

    @Override // retrofit2.Call
    public boolean isCanceled() {
        boolean z = true;
        if (this.canceled) {
            return true;
        }
        synchronized (this) {
            if (this.rawCall == null || !this.rawCall.isCanceled()) {
                z = false;
            }
        }
        return z;
    }

    @Override // retrofit2.Call
    public boolean isExecuted() {
        boolean z;
        synchronized (this) {
            z = this.executed;
        }
        return z;
    }

    /* JADX WARN: Finally extract failed */
    Response<T> parseResponse(Response response) throws IOException {
        ResponseBody body = response.body();
        Response build = response.newBuilder().body(new NoContentResponseBody(body.contentType(), body.contentLength())).build();
        int code = build.code();
        if (code < 200 || code >= 300) {
            try {
                Response<T> error = Response.error(Utils.buffer(body), build);
                body.close();
                return error;
            } catch (Throwable th) {
                body.close();
                throw th;
            }
        } else if (code == 204 || code == 205) {
            body.close();
            return Response.success((Object) null, build);
        } else {
            ExceptionCatchingRequestBody exceptionCatchingRequestBody = new ExceptionCatchingRequestBody(body);
            try {
                return Response.success(this.serviceMethod.toResponse(exceptionCatchingRequestBody), build);
            } catch (RuntimeException e) {
                exceptionCatchingRequestBody.throwIfCaught();
                throw e;
            }
        }
    }

    @Override // retrofit2.Call
    public Request request() {
        synchronized (this) {
            Call call = this.rawCall;
            if (call != null) {
                return call.request();
            } else if (this.creationFailure == null) {
                try {
                    Call createRawCall = createRawCall();
                    this.rawCall = createRawCall;
                    return createRawCall.request();
                } catch (IOException e) {
                    this.creationFailure = e;
                    throw new RuntimeException("Unable to create request.", e);
                } catch (RuntimeException e2) {
                    this.creationFailure = e2;
                    throw e2;
                }
            } else if (this.creationFailure instanceof IOException) {
                throw new RuntimeException("Unable to create request.", this.creationFailure);
            } else {
                throw ((RuntimeException) this.creationFailure);
            }
        }
    }
}
