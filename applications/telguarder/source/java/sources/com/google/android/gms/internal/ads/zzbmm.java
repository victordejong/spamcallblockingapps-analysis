package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmm.class */
public final class zzbmm implements zzeqb<zzbya<zzbse>> {
    private final zzeqo<zzbnm> zzftr;
    private final zzbmc zzfvc;

    public zzbmm(zzbmc zzbmcVar, zzeqo<zzbnm> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzftr = zzeqoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return (zzbya) zzeqh.zza(new zzbya(this.zzftr.get(), zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }
}
