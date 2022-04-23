package com.mopub.volley;

import android.os.Handler;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery.class */
public class ExecutorDelivery implements ResponseDelivery {

    /* renamed from: a */
    public final Executor f9482a;

    /* renamed from: com.mopub.volley.ExecutorDelivery$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery$a.class */
    public class ExecutorC4042a implements Executor {

        /* renamed from: a */
        public final /* synthetic */ Handler f9483a;

        public ExecutorC4042a(ExecutorDelivery executorDelivery, Handler handler) {
            this.f9483a = handler;
        }

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f9483a.post(runnable);
        }
    }

    /* renamed from: com.mopub.volley.ExecutorDelivery$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/volley/ExecutorDelivery$b.class */
    public static class RunnableC4043b implements Runnable {

        /* renamed from: a */
        public final Request f9484a;

        /* renamed from: b */
        public final Response f9485b;

        /* renamed from: c */
        public final Runnable f9486c;

        public RunnableC4043b(Request request, Response response, Runnable runnable) {
            this.f9484a = request;
            this.f9485b = response;
            this.f9486c = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f9484a.isCanceled()) {
                this.f9484a.m29951a("canceled-at-delivery");
                return;
            }
            if (this.f9485b.isSuccess()) {
                this.f9484a.deliverResponse(this.f9485b.result);
            } else {
                this.f9484a.deliverError(this.f9485b.error);
            }
            if (this.f9485b.intermediate) {
                this.f9484a.addMarker("intermediate-response");
            } else {
                this.f9484a.m29951a("done");
            }
            Runnable runnable = this.f9486c;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    public ExecutorDelivery(Handler handler) {
        this.f9482a = new ExecutorC4042a(this, handler);
    }

    public ExecutorDelivery(Executor executor) {
        this.f9482a = executor;
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postError(Request<?> request, VolleyError volleyError) {
        request.addMarker("post-error");
        this.f9482a.execute(new RunnableC4043b(request, Response.error(volleyError), null));
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response) {
        postResponse(request, response, null);
    }

    @Override // com.mopub.volley.ResponseDelivery
    public void postResponse(Request<?> request, Response<?> response, Runnable runnable) {
        request.markDelivered();
        request.addMarker("post-response");
        this.f9482a.execute(new RunnableC4043b(request, response, runnable));
    }
}
