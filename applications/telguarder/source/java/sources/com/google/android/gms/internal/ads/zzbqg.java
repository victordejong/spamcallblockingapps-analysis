package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbqg.class */
public final class zzbqg implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzbqs> zzewe;
    private final zzbps zzfxv;

    private zzbqg(zzbps zzbpsVar, zzeqo<zzbqs> zzeqoVar) {
        this.zzfxv = zzbpsVar;
        this.zzewe = zzeqoVar;
    }

    public static zzbqg zzc(zzbps zzbpsVar, zzeqo<zzbqs> zzeqoVar) {
        return new zzbqg(zzbpsVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzewe.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
