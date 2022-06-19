package com.mopub.volley;
/* loaded from: classes3-dex2jar.jar:com/mopub/volley/ExecutorDelivery$b.class */
public class ExecutorDelivery$b implements Runnable {

    /* renamed from: a */
    public final Request f9264a;

    /* renamed from: b */
    public final Response f9265b;

    /* renamed from: c */
    public final Runnable f9266c;

    public ExecutorDelivery$b(Request request, Response response, Runnable runnable) {
        this.f9264a = request;
        this.f9265b = response;
        this.f9266c = runnable;
    }

    @Override // java.lang.Runnable
    public void run() {
        if (this.f9264a.isCanceled()) {
            this.f9264a.m36167c("canceled-at-delivery");
            return;
        }
        if (this.f9265b.isSuccess()) {
            this.f9264a.deliverResponse(this.f9265b.result);
        } else {
            this.f9264a.deliverError(this.f9265b.error);
        }
        if (this.f9265b.intermediate) {
            this.f9264a.addMarker("intermediate-response");
        } else {
            this.f9264a.m36167c("done");
        }
        Runnable runnable = this.f9266c;
        if (runnable == null) {
            return;
        }
        runnable.run();
    }
}
