package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbq.class */
public final class zzcbq implements zzeqb<zzbya<zzbse>> {
    private final zzeqo<zzcea> zzftr;
    private final zzcbi zzgdb;

    public zzcbq(zzcbi zzcbiVar, zzeqo<zzcea> zzeqoVar) {
        this.zzgdb = zzcbiVar;
        this.zzftr = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeih), "Cannot return null from a non-@Nullable @Provides method");
    }
}
