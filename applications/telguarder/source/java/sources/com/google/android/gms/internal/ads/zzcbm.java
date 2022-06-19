package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbm.class */
public final class zzcbm implements zzeqb<zzccl> {
    private final zzcbi zzgdb;
    private final zzeqo<zzcbc> zzgdd;

    public zzcbm(zzcbi zzcbiVar, zzeqo<zzcbc> zzeqoVar) {
        this.zzgdb = zzcbiVar;
        this.zzgdd = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzccl) zzeqh.zza(this.zzgdd.get(), "Cannot return null from a non-@Nullable @Provides method");
    }
}
