package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbml.class */
public final class zzbml implements zzeqb<zzbya<zzbtb>> {
    private final zzeqo<zzbnm> zzftr;
    private final zzbmc zzfvc;

    public zzbml(zzbmc zzbmcVar, zzeqo<zzbnm> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzftr = zzeqoVar;
    }

    public static zzbya<zzbtb> zza(zzbmc zzbmcVar, zzbnm zzbnmVar) {
        return (zzbya) zzeqh.zza(new zzbya(zzbnmVar, zzazp.zzeig), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzftr.get());
    }
}
