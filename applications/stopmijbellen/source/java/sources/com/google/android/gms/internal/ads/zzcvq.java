package com.google.android.gms.internal.ads;

import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcvq.class */
public final class zzcvq implements zzgpr<zzcvp> {
    private final zzgqe<Map<String, zzcvs>> zza;
    private final zzgqe<Map<String, zzcvr>> zzb;

    public zzcvq(zzgqe<Map<String, zzcvs>> zzgqeVar, zzgqe<Map<String, zzcvr>> zzgqeVar2) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
    }

    /* renamed from: zza */
    public final zzcvp zzb() {
        return new zzcvp(((zzgpv) this.zza).zzb(), ((zzgpv) this.zzb).zzb());
    }
}
