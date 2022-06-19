package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dtg.class */
public final class dtg implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dmt f15669a;

    /* renamed from: b */
    private final /* synthetic */ dtd f15670b;

    public dtg(dtd dtdVar, dmt dmtVar) {
        this.f15670b = dtdVar;
        this.f15669a = dmtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15670b.f15664b;
        dteVar.mo8630a(this.f15669a);
    }
}
