package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchc.class */
public final class zzchc implements zzeqb<zzcgz> {
    private final zzeqo<zzbsm> zzfgg;
    private final zzeqo<zzdmw> zzfrs;

    public zzchc(zzeqo<zzbsm> zzeqoVar, zzeqo<zzdmw> zzeqoVar2) {
        this.zzfgg = zzeqoVar;
        this.zzfrs = zzeqoVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcgz(this.zzfgg.get(), this.zzfrs.get());
    }
}
