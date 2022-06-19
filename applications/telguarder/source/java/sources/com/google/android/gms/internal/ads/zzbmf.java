package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmf.class */
public final class zzbmf implements zzeqb<zzdmz> {
    private final zzbmc zzfvc;

    public zzbmf(zzbmc zzbmcVar) {
        this.zzfvc = zzbmcVar;
    }

    public static zzdmz zza(zzbmc zzbmcVar) {
        return (zzdmz) zzeqh.zza(zzbmcVar.zzake(), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc);
    }
}
