package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzp.class */
public final class zzdzp implements zzeao {
    private static final Pattern zzf = Pattern.compile("Received error HTTP response code: (.*)");
    private final zzdyq zza;
    private final zzfsn zzb;
    private final zzfar zzc;
    private final ScheduledExecutorService zzd;
    private final zzecu zze;

    public zzdzp(zzfar zzfarVar, zzdyq zzdyqVar, zzfsn zzfsnVar, ScheduledExecutorService scheduledExecutorService, zzecu zzecuVar) {
        this.zzc = zzfarVar;
        this.zza = zzdyqVar;
        this.zzb = zzfsnVar;
        this.zzd = scheduledExecutorService;
        this.zze = zzecuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeao
    public final zzfsm<zzfal> zzc(zzcbj zzcbjVar) {
        zzfsm<zzfal> zzi = zzfsd.zzi(this.zza.zza(zzcbjVar), new zzfrk(this) { // from class: com.google.android.gms.internal.ads.zzdzm
            private final zzdzp zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfrk
            public final zzfsm zza(Object obj) {
                return this.zza.zzd((InputStream) obj);
            }
        }, this.zzb);
        zzfsm<zzfal> zzfsmVar = zzi;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdO)).booleanValue()) {
            zzfsmVar = zzfsd.zzg(zzfsd.zzh(zzi, ((Integer) zzbet.zzc().zzc(zzbjl.zzdP)).intValue(), TimeUnit.SECONDS, this.zzd), TimeoutException.class, zzdzn.zza, zzchg.zzf);
        }
        zzfsd.zzp(zzfsmVar, new zzdzo(this), zzchg.zzf);
        return zzfsmVar;
    }

    public final /* synthetic */ zzfsm zzd(InputStream inputStream) throws Exception {
        return zzfsd.zza(new zzfal(new zzfai(this.zzc), zzfak.zza(new InputStreamReader(inputStream))));
    }
}
