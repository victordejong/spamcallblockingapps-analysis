package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmh.class */
public final class zzbmh implements zzeqb<zzblv> {
    private final zzeqo<zzblx> zzfnb;
    private final zzbmc zzfvc;

    public zzbmh(zzbmc zzbmcVar, zzeqo<zzblx> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzfnb = zzeqoVar;
    }

    public static zzblv zza(zzbmc zzbmcVar, Object obj) {
        return (zzblv) zzeqh.zza((zzblx) obj, "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzfnb.get());
    }
}
