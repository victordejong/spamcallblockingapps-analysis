package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.util.Clock;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdpn.class */
public final class zzdpn implements zzgpr<zzcxp> {
    private final zzgqe<zzaxw> zza;
    private final zzgqe<Executor> zzb;
    private final zzgqe<Context> zzc;
    private final zzgqe<Clock> zzd;

    public zzdpn(zzgqe<zzaxw> zzgqeVar, zzgqe<Executor> zzgqeVar2, zzgqe<Context> zzgqeVar3, zzgqe<Clock> zzgqeVar4) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
        this.zzd = zzgqeVar4;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzaxw zzb = this.zza.zzb();
        return new zzcxp(this.zzb.zzb(), new zzcxb(this.zzc.zzb(), zzb), this.zzd.zzb());
    }
}
