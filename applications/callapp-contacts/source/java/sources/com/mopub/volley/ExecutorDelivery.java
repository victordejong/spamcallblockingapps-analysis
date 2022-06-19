package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/ExecutorDelivery.class */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a */
    private final Executor f60360a;

    /* renamed from: com.mopub.volley.ExecutorDelivery$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
    public static final class RunnableC17009a implements Runnable {

        /* renamed from: a */
        private final Request f60363a;

        /* renamed from: b */
        private final Response f60364b;

        /* renamed from: c */
        private final Runnable f60365c;

        public RunnableC17009a(Request request, Response response, Runnable runnable) {
            this.f60363a = request;
            this.f60364b = response;
            this.f60365c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f60363a.isCanceled()) {
                this.f60363a.finish("canceled-at-delivery");
                return;
            }
            if (this.f60364b.isSuccess()) {
                this.f60363a.deliverResponse(this.f60364b.result);
            } else {
                this.f60363a.deliverError(this.f60364b.error);
            }
            if (this.f60364b.intermediate) {
                this.f60363a.addMarker("intermediate-response");
            } else {
                this.f60363a.finish("done");
            }
            Runnable runnable = this.f60365c;
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }

    public ExecutorDelivery(final Handler handler) {
        this.f60360a = new Executor() { // from class: com.mopub.volley.ExecutorDelivery.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public ExecutorDelivery(Executor executor) {
        this.f60360a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f60360a.execute(new RunnableC17009a(request, Response.error(volleyError), null));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f60360a.execute(new RunnableC17009a(request, response, runnable));
    }
}
