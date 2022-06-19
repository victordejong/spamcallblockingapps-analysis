package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aad.class */
final class aad implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ zzbbq f39701a;

    public aad(zzbbq zzbbqVar) {
        this.f39701a = zzbbqVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f39701a.f50152a;
        if (aakVar != null) {
            aakVar2 = this.f39701a.f50152a;
            aakVar2.mo13873a();
        }
    }
}
