package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmv.class */
public final class zzdmv implements zzeqb<zzdmq> {
    private final zzeqo<zzdnk> zzfpa;
    private final zzeqo<zzdmc> zzgys;
    private final zzeqo<zzdlh> zzhfh;

    public zzdmv(zzeqo<zzdmc> zzeqoVar, zzeqo<zzdlh> zzeqoVar2, zzeqo<zzdnk> zzeqoVar3) {
        this.zzgys = zzeqoVar;
        this.zzhfh = zzeqoVar2;
        this.zzfpa = zzeqoVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzdmq(this.zzgys.get(), this.zzhfh.get(), this.zzfpa.get());
    }
}
