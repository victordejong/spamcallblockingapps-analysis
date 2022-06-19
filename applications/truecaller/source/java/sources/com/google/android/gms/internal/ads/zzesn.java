package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import com.razorpay.AnalyticsConstants;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzesn.class */
public final class zzesn implements zzery<zzeso> {
    private final Context zza;
    private final ScheduledExecutorService zzb;
    private final Executor zzc;
    private final int zzd;
    private final zzcfw zze;

    public zzesn(zzcfw zzcfwVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i, byte[] bArr) {
        this.zze = zzcfwVar;
        this.zza = context;
        this.zzb = scheduledExecutorService;
        this.zzc = executor;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeso> zza() {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzaF)).booleanValue()) {
            return zzfsd.zzf((zzfru) zzfsd.zzh(zzfsd.zzj(zzfru.zzw((zzfsm) this.zze.zza(this.zza, this.zzd)), zzesl.zza, this.zzc), ((Long) zzbet.zzc().zzc(zzbjl.zzaG)).longValue(), TimeUnit.MILLISECONDS, this.zzb), Throwable.class, new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzesm
                private final zzesn zza;

                {
                    this.zza = this;
                }

                @Override // com.google.android.gms.internal.ads.zzfln
                public final Object apply(Object obj) {
                    return this.zza.zzb((Throwable) obj);
                }
            }, this.zzc);
        }
        return zzfsd.zzc(new Exception("Did not ad Ad ID into query param."));
    }

    public final /* synthetic */ zzeso zzb(Throwable th) {
        zzber.zza();
        ContentResolver contentResolver = this.zza.getContentResolver();
        return new zzeso(null, contentResolver == null ? null : Settings.Secure.getString(contentResolver, AnalyticsConstants.ANDROID_ID));
    }
}
