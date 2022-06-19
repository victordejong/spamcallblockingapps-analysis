package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdow.class */
public final class zzdow implements zzeqb<zzayy> {
    private final zzeqo<zzayo> zzhas;
    private final zzdor zzhml;

    private zzdow(zzdor zzdorVar, zzeqo<zzayo> zzeqoVar) {
        this.zzhml = zzdorVar;
        this.zzhas = zzeqoVar;
    }

    public static zzdow zzc(zzdor zzdorVar, zzeqo<zzayo> zzeqoVar) {
        return new zzdow(zzdorVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzayy) zzeqh.zza(this.zzhas.get().zzxu(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
