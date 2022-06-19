package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aae.class */
public final class aae implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39702a;

    /* renamed from: b */
    private final /* synthetic */ String f39703b;

    /* renamed from: c */
    private final /* synthetic */ zzbbq f39704c;

    public aae(zzbbq zzbbqVar, String str, String str2) {
        this.f39704c = zzbbqVar;
        this.f39702a = str;
        this.f39703b = str2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        aak aakVar;
        aak aakVar2;
        aakVar = this.f39704c.f50152a;
        if (aakVar != null) {
            aakVar2 = this.f39704c.f50152a;
            aakVar2.mo13866a(this.f39702a, this.f39703b);
        }
    }
}
