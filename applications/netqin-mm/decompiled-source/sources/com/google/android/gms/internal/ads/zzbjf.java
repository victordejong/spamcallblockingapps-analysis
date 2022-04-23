package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjf.class */
public final class zzbjf implements zzeoy<zzeg> {

    /* renamed from: a */
    public final zzbja f25050a;

    public zzbjf(zzbja zzbjaVar) {
        this.f25050a = zzbjaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeph
    public final /* synthetic */ Object get() {
        zzeg e = this.f25050a.m15424e();
        zzepe.m12187a(e, "Cannot return null from a non-@Nullable @Provides method");
        return e;
    }
}
