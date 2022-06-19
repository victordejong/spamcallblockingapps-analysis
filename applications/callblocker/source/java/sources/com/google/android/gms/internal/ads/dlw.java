package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlw.class */
public final class dlw implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dmt f14699a;

    /* renamed from: b */
    private final /* synthetic */ dlt f14700b;

    public dlw(dlt dltVar, dmt dmtVar) {
        this.f14700b = dltVar;
        this.f14699a = dmtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        dluVar = this.f14700b.f14694b;
        dluVar.m9181a(this.f14699a);
    }
}
