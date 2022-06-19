package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzewc.class */
public final class zzewc implements zzevn<zzewd> {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final zzcic zze;

    public zzewc(zzcic zzcicVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, byte[] bArr) {
        this.zze = zzcicVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
    }

    public final /* synthetic */ zzewd zza(Throwable th) {
        zzbgo.zzb();
        ContentResolver contentResolver = this.zza.getContentResolver();
        return new zzewd(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, "android_id"));
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzewd> zzb() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzaI)).booleanValue()) {
            return zzfwq.zzf((zzfwh) zzfwq.zzo(zzfwq.zzm(zzfwh.zzw(this.zze.zza(this.zza, this.zzd)), zzewb.zza, this.zzc), ((Long) zzbgq.zzc().zzb(zzblj.zzaJ)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzewa
                @Override // com.google.android.gms.internal.ads.zzfpv
                public final Object apply(Object obj) {
                    return zzewc.this.zza((Throwable) obj);
                }
            }, this.zzc);
        }
        return zzfwq.zzh(new Exception("Did not ad Ad ID into query param."));
    }
}
