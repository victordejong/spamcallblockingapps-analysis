package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeiz.class */
public final class zzeiz implements zzgpr<zzeiy> {
    private final zzgqe<Context> zza;
    private final zzgqe<zzczt> zzb;
    private final zzgqe<Executor> zzc;

    public zzeiz(zzgqe<Context> zzgqeVar, zzgqe<zzczt> zzgqeVar2, zzgqe<Executor> zzgqeVar3) {
        this.zza = zzgqeVar;
        this.zzb = zzgqeVar2;
        this.zzc = zzgqeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzgqe
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzeiy(this.zza.zzb(), this.zzb.zzb(), this.zzc.zzb());
    }
}
