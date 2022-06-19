package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dlz.class */
public final class dlz implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dlf f14706a;

    /* renamed from: b */
    private final /* synthetic */ dlt f14707b;

    public dlz(dlt dltVar, dlf dlfVar) {
        this.f14707b = dltVar;
        this.f14706a = dlfVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        dluVar = this.f14707b.f14694b;
        dluVar.m9182a(this.f14706a);
    }
}
