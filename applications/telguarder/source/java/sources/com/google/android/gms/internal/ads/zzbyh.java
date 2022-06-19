package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyh.class */
public final class zzbyh implements zzeqb<zzbyi> {
    private final zzeqo<zzdss> zzexv;
    private final zzeqo<zzdmw> zzfrs;

    private zzbyh(zzeqo<zzdmw> zzeqoVar, zzeqo<zzdss> zzeqoVar2) {
        this.zzfrs = zzeqoVar;
        this.zzexv = zzeqoVar2;
    }

    public static zzbyh zzs(zzeqo<zzdmw> zzeqoVar, zzeqo<zzdss> zzeqoVar2) {
        return new zzbyh(zzeqoVar, zzeqoVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzbyi(this.zzfrs.get(), this.zzexv.get());
    }
}
