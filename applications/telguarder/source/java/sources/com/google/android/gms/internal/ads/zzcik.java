package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcik.class */
public final class zzcik implements zzeqb<zzbya<zzbsh>> {
    private final zzeqo<zzcif> zzftr;
    private final zzcih zzgki;

    private zzcik(zzcih zzcihVar, zzeqo<zzcif> zzeqoVar) {
        this.zzgki = zzcihVar;
        this.zzftr = zzeqoVar;
    }

    public static zzcik zza(zzcih zzcihVar, zzeqo<zzcif> zzeqoVar) {
        return new zzcik(zzcihVar, zzeqoVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
