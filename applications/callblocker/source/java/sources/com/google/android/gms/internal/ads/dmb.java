package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmb.class */
public final class dmb implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ dmt f14710a;

    /* renamed from: b */
    private final /* synthetic */ dlt f14711b;

    public dmb(dlt dltVar, dmt dmtVar) {
        this.f14711b = dltVar;
        this.f14710a = dmtVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        dlu dluVar;
        this.f14710a.m9088a();
        dluVar = this.f14711b.f14694b;
        dluVar.m9179b(this.f14710a);
    }
}
