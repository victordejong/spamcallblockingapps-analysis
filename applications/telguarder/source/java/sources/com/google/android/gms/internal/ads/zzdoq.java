package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdoq.class */
public final class zzdoq implements zzeqb<zzbya<zzbrr>> {
    private final zzeqo<zzdop> zzfxm;
    private final zzdon zzhmk;

    private zzdoq(zzdon zzdonVar, zzeqo<zzdop> zzeqoVar) {
        this.zzhmk = zzdonVar;
        this.zzfxm = zzeqoVar;
    }

    public static zzdoq zza(zzdon zzdonVar, zzeqo<zzdop> zzeqoVar) {
        return new zzdoq(zzdonVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzfxm.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
