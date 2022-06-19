package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtl.class */
public final class dtl implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dmt f15683a;

    /* renamed from: b */
    private final /* synthetic */ dtd f15684b;

    public dtl(dtd dtdVar, dmt dmtVar) {
        this.f15684b = dtdVar;
        this.f15683a = dmtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        this.f15683a.m9088a();
        dteVar = this.f15684b.f15664b;
        dteVar.mo8628b(this.f15683a);
    }
}
