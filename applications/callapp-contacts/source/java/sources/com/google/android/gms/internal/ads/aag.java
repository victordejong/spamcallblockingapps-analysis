package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aag.class */
final class aag implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ int f39706a;

    /* renamed from: b */
    private final /* synthetic */ int f39707b;

    /* renamed from: c */
    private final /* synthetic */ zzbbq f39708c;

    public aag(zzbbq zzbbqVar, int i, int i2) {
        this.f39708c = zzbbqVar;
        this.f39706a = i;
        this.f39707b = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f39708c.f50152a;
        if (aakVar != null) {
            aakVar2 = this.f39708c.f50152a;
            aakVar2.mo13872a(this.f39706a, this.f39707b);
        }
    }
}
