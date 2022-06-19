package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzetu.class */
public final class zzetu implements zzery<zzetv> {
    public final ScheduledExecutorService zza;
    public final Context zzb;
    public final zzbzu zzc;

    public zzetu(zzbzu zzbzuVar, ScheduledExecutorService scheduledExecutorService, Context context, byte[] bArr) {
        this.zzc = zzbzuVar;
        this.zza = scheduledExecutorService;
        this.zzb = context;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzetv> zza() {
        return zzfsd.zzj(zzfsd.zzh(zzfsd.zza(new Bundle()), ((Long) zzbet.zzc().zzc(zzbjl.zzcy)).longValue(), TimeUnit.MILLISECONDS, this.zza), zzett.zza, zzchg.zza);
    }
}
