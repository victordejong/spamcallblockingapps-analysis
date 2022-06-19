package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdou.class */
public final class zzdou implements zzeqb<zzf> {
    private final zzeqo<zzayo> zzhas;
    private final zzdor zzhml;

    private zzdou(zzdor zzdorVar, zzeqo<zzayo> zzeqoVar) {
        this.zzhml = zzdorVar;
        this.zzhas = zzeqoVar;
    }

    public static zzf zza(zzdor zzdorVar, zzayo zzayoVar) {
        return (zzf) zzeqh.zza(zzayoVar.zzxs(), "Cannot return null from a non-@Nullable @Provides method");
    }

    public static zzdou zzb(zzdor zzdorVar, zzeqo<zzayo> zzeqoVar) {
        return new zzdou(zzdorVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzhml, this.zzhas.get());
    }
}
