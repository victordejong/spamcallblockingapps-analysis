package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery.class */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a */
    public final Executor f35077a;

    /* renamed from: com.mopub.volley.ExecutorDelivery$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
    public class ExecutorC8995a implements Executor {

        /* renamed from: a */
        public final /* synthetic */ Handler f35078a;

        public ExecutorC8995a(ExecutorDelivery executorDelivery, Handler handler) {
            this.f35078a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f35078a.post(runnable);
        }
    }

    /* renamed from: com.mopub.volley.ExecutorDelivery$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery$b.class */
    public static class RunnableC8996b implements Runnable {

        /* renamed from: a */
        public final Request f35079a;

        /* renamed from: b */
        public final Response f35080b;

        /* renamed from: c */
        public final Runnable f35081c;

        public RunnableC8996b(Request request, Response response, Runnable runnable) {
            this.f35079a = request;
            this.f35080b = response;
            this.f35081c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f35079a.isCanceled()) {
                this.f35079a.m3748a("canceled-at-delivery");
                return;
            }
            if (this.f35080b.isSuccess()) {
                this.f35079a.deliverResponse(this.f35080b.result);
            } else {
                this.f35079a.deliverError(this.f35080b.error);
            }
            if (this.f35080b.intermediate) {
                this.f35079a.addMarker("intermediate-response");
            } else {
                this.f35079a.m3748a("done");
            }
            Runnable runnable = this.f35081c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public ExecutorDelivery(Handler handler) {
        this.f35077a = new ExecutorC8995a(this, handler);
    }

    public ExecutorDelivery(Executor executor) {
        this.f35077a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f35077a.execute(new RunnableC8996b(request, Response.error(volleyError), null));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f35077a.execute(new RunnableC8996b(request, response, runnable));
    }
}
