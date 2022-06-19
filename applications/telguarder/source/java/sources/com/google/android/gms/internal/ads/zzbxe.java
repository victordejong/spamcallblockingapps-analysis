package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbxe.class */
public final class zzbxe implements zzeqb<zzcuw> {
    private final zzeqo<zzcuy> zzfai;
    private final zzeqo<zzcrq> zzfaj;
    private final zzeqo<Clock> zzfsz;
    private final zzbwg zzgav;

    private zzbxe(zzbwg zzbwgVar, zzeqo<Clock> zzeqoVar, zzeqo<zzcuy> zzeqoVar2, zzeqo<zzcrq> zzeqoVar3) {
        this.zzgav = zzbwgVar;
        this.zzfsz = zzeqoVar;
        this.zzfai = zzeqoVar2;
        this.zzfaj = zzeqoVar3;
    }

    public static zzbxe zza(zzbwg zzbwgVar, zzeqo<Clock> zzeqoVar, zzeqo<zzcuy> zzeqoVar2, zzeqo<zzcrq> zzeqoVar3) {
        return new zzbxe(zzbwgVar, zzeqoVar, zzeqoVar2, zzeqoVar3);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzcuw) zzeqh.zza(this.zzgav.zza(this.zzfsz.get(), this.zzfai.get(), this.zzfaj.get()), "Cannot return null from a non-@Nullable @Provides method");
    }
}
