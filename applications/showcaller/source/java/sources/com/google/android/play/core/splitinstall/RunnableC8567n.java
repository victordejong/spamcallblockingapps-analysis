package com.google.android.play.core.splitinstall;
/* renamed from: com.google.android.play.core.splitinstall.n */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/n.class */
public final class RunnableC8567n implements Runnable {

    /* renamed from: d */
    final /* synthetic */ AbstractC8554a f38159d;

    /* renamed from: e */
    final /* synthetic */ int f38160e;

    /* renamed from: f */
    final /* synthetic */ int f38161f;

    /* renamed from: g */
    final /* synthetic */ C8568o f38162g;

    public RunnableC8567n(C8568o c8568o, AbstractC8554a abstractC8554a, int i, int i2) {
        this.f38162g = c8568o;
        this.f38159d = abstractC8554a;
        this.f38160e = i;
        this.f38161f = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C8568o c8568o = this.f38162g;
        AbstractC8554a abstractC8554a = this.f38159d;
        c8568o.m3330g(new C8556c(abstractC8554a.mo3345h(), this.f38160e, this.f38161f, abstractC8554a.mo3349c(), abstractC8554a.mo3343j(), abstractC8554a.mo3351a(), abstractC8554a.mo3350b(), abstractC8554a.mo3346g(), abstractC8554a.mo3348d()));
    }
}
