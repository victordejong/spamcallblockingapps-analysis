package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbmj.class */
public final class zzbmj implements zzgpr<zzbmi> {
    private final zzgqe<Context> zza;
    private final zzgqe<ScheduledExecutorService> zzb;
    private final zzgqe<zzbmk> zzc;

    public zzbmj(zzgqe<Context> zzgqeVar, zzgqe<ScheduledExecutorService> zzgqeVar2, zzgqe<zzbmk> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* synthetic */ Object zzb() {
        return new zzbmi(((zzffh) this.zza).zza(), this.zzb.zzb(), new zzbmk(), null);
    }
}
