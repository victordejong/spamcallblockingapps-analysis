package com.google.android.play.core.splitinstall;
/* renamed from: com.google.android.play.core.splitinstall.ag */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ag.class */
public final class RunnableC15141ag implements Runnable {

    /* renamed from: a */
    final /* synthetic */ AbstractC15152c f54927a;

    /* renamed from: b */
    final /* synthetic */ int f54928b;

    /* renamed from: c */
    final /* synthetic */ int f54929c;

    /* renamed from: d */
    final /* synthetic */ C15142ah f54930d;

    public RunnableC15141ag(C15142ah c15142ah, AbstractC15152c abstractC15152c, int i, int i2) {
        this.f54930d = c15142ah;
        this.f54927a = abstractC15152c;
        this.f54928b = i;
        this.f54929c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C15142ah c15142ah = this.f54930d;
        AbstractC15152c abstractC15152c = this.f54927a;
        c15142ah.m9390a((AbstractC15152c) new C15154e(abstractC15152c.mo9381a(), this.f54928b, this.f54929c, abstractC15152c.mo9378d(), abstractC15152c.mo9377e(), abstractC15152c.mo9375i(), abstractC15152c.mo9374j(), abstractC15152c.mo9376h(), abstractC15152c.mo9373k()));
    }
}
