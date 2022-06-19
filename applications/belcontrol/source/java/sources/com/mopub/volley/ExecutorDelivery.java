package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/ExecutorDelivery.class */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a */
    public final Executor f5456a;

    /* renamed from: com.mopub.volley.ExecutorDelivery$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
    public class ExecutorC1228a implements Executor {

        /* renamed from: a */
        public final /* synthetic */ Handler f5457a;

        public ExecutorC1228a(ExecutorDelivery executorDelivery, Handler handler) {
            this.f5457a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f5457a.post(runnable);
        }
    }

    /* renamed from: com.mopub.volley.ExecutorDelivery$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/volley/ExecutorDelivery$b.class */
    public static class RunnableC1229b implements Runnable {

        /* renamed from: a */
        public final Request f5458a;

        /* renamed from: b */
        public final Response f5459b;

        /* renamed from: c */
        public final Runnable f5460c;

        public RunnableC1229b(Request request, Response response, Runnable runnable) {
            this.f5458a = request;
            this.f5459b = response;
            this.f5460c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5458a.isCanceled()) {
                this.f5458a.m3170d("canceled-at-delivery");
                return;
            }
            if (this.f5459b.isSuccess()) {
                this.f5458a.deliverResponse(this.f5459b.result);
            } else {
                this.f5458a.deliverError(this.f5459b.error);
            }
            if (this.f5459b.intermediate) {
                this.f5458a.addMarker("intermediate-response");
            } else {
                this.f5458a.m3170d("done");
            }
            Runnable runnable = this.f5460c;
            if (runnable == null) {
                return;
            }
            runnable.run();
        }
    }

    public ExecutorDelivery(Handler handler) {
        this.f5456a = new ExecutorC1228a(this, handler);
    }

    public ExecutorDelivery(Executor executor) {
        this.f5456a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f5456a.execute(new RunnableC1229b(request, Response.error(volleyError), null));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f5456a.execute(new RunnableC1229b(request, response, runnable));
    }
}
