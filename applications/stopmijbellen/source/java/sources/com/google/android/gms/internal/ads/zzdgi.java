package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdgi.class */
public final class zzdgi implements zzgpr<zzdgh> {
    private final zzgqe<Set<zzdlw<zzdgj>>> zza;

    public zzdgi(zzgqe<Set<zzdlw<zzdgj>>> zzgqeVar) {
        this.zza = zzgqeVar;
    }

    public static zzdgh zzc(Set<zzdlw<zzdgj>> set) {
        return new zzdgh(set);
    }

    /* renamed from: zza */
    public final zzdgh zzb() {
        return new zzdgh(((zzgqc) this.zza).zzb());
    }
}
