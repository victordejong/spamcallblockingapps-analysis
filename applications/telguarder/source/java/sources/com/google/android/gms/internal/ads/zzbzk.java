package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzk.class */
public final class zzbzk implements zzeqb<zzbya<zzq>> {
    private final zzeqo<zzcai> zzftr;
    private final zzbyz zzgbk;

    private zzbzk(zzbyz zzbyzVar, zzeqo<zzcai> zzeqoVar) {
        this.zzgbk = zzbyzVar;
        this.zzftr = zzeqoVar;
    }

    public static zzbzk zzd(zzbyz zzbyzVar, zzeqo<zzcai> zzeqoVar) {
        return new zzbzk(zzbyzVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
