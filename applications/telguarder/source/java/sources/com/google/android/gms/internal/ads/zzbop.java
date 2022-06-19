package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbop.class */
public final class zzbop implements zzeqb<zzboq> {
    private final zzeqo<zzbsm> zzfgg;

    private zzbop(zzeqo<zzbsm> zzeqoVar) {
        this.zzfgg = zzeqoVar;
    }

    public static zzbop zze(zzeqo<zzbsm> zzeqoVar) {
        return new zzbop(zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzboq(this.zzfgg.get());
    }
}
