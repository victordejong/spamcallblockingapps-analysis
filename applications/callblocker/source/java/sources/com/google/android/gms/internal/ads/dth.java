package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dth.class */
public final class dth implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f15671a;

    /* renamed from: b */
    private final /* synthetic */ long f15672b;

    /* renamed from: c */
    private final /* synthetic */ dtd f15673c;

    public dth(dtd dtdVar, int i, long j) {
        this.f15673c = dtdVar;
        this.f15671a = i;
        this.f15672b = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dte dteVar;
        dteVar = this.f15673c.f15664b;
        dteVar.mo8633a(this.f15671a, this.f15672b);
    }
}
