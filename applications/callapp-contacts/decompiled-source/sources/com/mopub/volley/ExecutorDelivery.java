package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/mopub/volley/ExecutorDelivery.class */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f34787a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final Request f34790a;

        /* renamed from: b  reason: collision with root package name */
        private final Response f34791b;

        /* renamed from: c  reason: collision with root package name */
        private final Runnable f34792c;

        public a(Request request, Response response, Runnable runnable) {
            this.f34790a = request;
            this.f34791b = response;
            this.f34792c = runnable;
        }

        @Override // java.lang.Runnable
        public final void run() {
            if (this.f34790a.isCanceled()) {
                this.f34790a.finish("canceled-at-delivery");
                return;
            }
            if (this.f34791b.isSuccess()) {
                this.f34790a.deliverResponse(this.f34791b.result);
            } else {
                this.f34790a.deliverError(this.f34791b.error);
            }
            if (this.f34791b.intermediate) {
                this.f34790a.addMarker("intermediate-response");
            } else {
                this.f34790a.finish("done");
            }
            Runnable runnable = this.f34792c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public ExecutorDelivery(final Handler handler) {
        this.f34787a = new Executor() { // from class: com.mopub.volley.ExecutorDelivery.1
            @Override // java.util.concurrent.Executor
            public final void execute(Runnable runnable) {
                handler.post(runnable);
            }
        };
    }

    public ExecutorDelivery(Executor executor) {
        this.f34787a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f34787a.execute(new a(request, Response.error(volleyError), null));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f34787a.execute(new a(request, response, runnable));
    }
}
