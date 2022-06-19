package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbl.class */
public final class zzcbl implements zzeqb<zzcgk> {
    private final zzcbi zzgdb;

    public zzcbl(zzcbi zzcbiVar) {
        this.zzgdb = zzcbiVar;
    }

    public static zzcgk zza(zzcbi zzcbiVar) {
        return (zzcgk) zzeqh.zza(zzcbiVar.zzann(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzgdb);
    }
}
