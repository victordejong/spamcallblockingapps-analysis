package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmd.class */
public final class zzbmd implements zzeqb<zzbsw> {
    private final zzbmc zzfvc;
    private final zzeqo<Set<zzbya<zzbtb>>> zzfvd;

    public zzbmd(zzbmc zzbmcVar, zzeqo<Set<zzbya<zzbtb>>> zzeqoVar) {
        this.zzfvc = zzbmcVar;
        this.zzfvd = zzeqoVar;
    }

    public static zzbsw zza(zzbmc zzbmcVar, Set<zzbya<zzbtb>> set) {
        return (zzbsw) zzeqh.zza(zzbmcVar.zza(set), "Cannot return null from a non-@Nullable @Provides method");
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return zza(this.zzfvc, this.zzfvd.get());
    }
}
