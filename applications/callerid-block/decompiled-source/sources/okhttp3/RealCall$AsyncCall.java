package okhttp3;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import okhttp3.internal.NamedRunnable;
import okhttp3.internal.platform.Platform;
/* loaded from: classes2-dex2jar.jar:okhttp3/RealCall$AsyncCall.class */
final class RealCall$AsyncCall extends NamedRunnable {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final Callback responseCallback;
    final /* synthetic */ RealCall this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    RealCall$AsyncCall(RealCall realCall, Callback callback) {
        super("OkHttp %s", realCall.redactedUrl());
        this.this$0 = realCall;
        this.responseCallback = callback;
    }

    @Override // okhttp3.internal.NamedRunnable
    protected void execute() {
        IOException e;
        this.this$0.timeout.enter();
        boolean z = true;
        try {
            try {
                Response responseWithInterceptorChain = this.this$0.getResponseWithInterceptorChain();
                try {
                    if (this.this$0.retryAndFollowUpInterceptor.isCanceled()) {
                        this.responseCallback.onFailure(this.this$0, new IOException("Canceled"));
                    } else {
                        this.responseCallback.onResponse(this.this$0, responseWithInterceptorChain);
                    }
                } catch (IOException e2) {
                    e = e2;
                    IOException timeoutExit = this.this$0.timeoutExit(e);
                    if (z) {
                        Platform platform = Platform.get();
                        platform.log(4, "Callback failure for " + this.this$0.toLoggableString(), timeoutExit);
                    } else {
                        RealCall.access$000(this.this$0).callFailed(this.this$0, timeoutExit);
                        this.responseCallback.onFailure(this.this$0, timeoutExit);
                    }
                    this.this$0.client.dispatcher().finished(this);
                }
            } catch (Throwable th) {
                this.this$0.client.dispatcher().finished(this);
                throw th;
            }
        } catch (IOException e3) {
            e = e3;
            z = false;
        }
        this.this$0.client.dispatcher().finished(this);
    }

    void executeOn(ExecutorService executorService) {
        try {
            try {
                executorService.execute(this);
            } catch (RejectedExecutionException e) {
                InterruptedIOException interruptedIOException = new InterruptedIOException("executor rejected");
                interruptedIOException.initCause(e);
                RealCall.access$000(this.this$0).callFailed(this.this$0, interruptedIOException);
                this.responseCallback.onFailure(this.this$0, interruptedIOException);
                this.this$0.client.dispatcher().finished(this);
            }
        } catch (Throwable th) {
            this.this$0.client.dispatcher().finished(this);
            throw th;
        }
    }

    RealCall get() {
        return this.this$0;
    }

    String host() {
        return this.this$0.originalRequest.url().host();
    }

    Request request() {
        return this.this$0.originalRequest;
    }
}
