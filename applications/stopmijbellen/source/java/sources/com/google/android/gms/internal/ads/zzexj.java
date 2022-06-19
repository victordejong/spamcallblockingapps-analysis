package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexj.class */
public final class zzexj implements zzevn<zzexk> {
    public final ScheduledExecutorService zza;
    public final Context zzb;
    public final zzcbw zzc;

    public zzexj(zzcbw zzcbwVar, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.zzc = zzcbwVar;
        this.zza = scheduledExecutorService;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzexk> zzb() {
        return zzfwq.zzm(zzfwq.zzo(zzfwq.zzi(new Bundle()), ((Long) zzbgq.zzc().zzb(zzblj.zzcF)).longValue(), TimeUnit.MILLISECONDS, this.zza), zzexi.zza, zzcjm.zza);
    }
}
