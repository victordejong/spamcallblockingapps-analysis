package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dti.class */
public final class dti implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dlf f15674a;

    /* renamed from: b */
    private final /* synthetic */ dtd f15675b;

    public dti(dtd dtdVar, dlf dlfVar) {
        this.f15675b = dtdVar;
        this.f15674a = dlfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15675b.f15664b;
        dteVar.mo8631a(this.f15674a);
    }
}
