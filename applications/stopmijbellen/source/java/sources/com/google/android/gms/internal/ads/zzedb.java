package com.google.android.gms.internal.ads;

import android.os.Binder;
import com.google.android.gms.ads.internal.zzt;
import java.io.InputStream;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzedb.class */
public final class zzedb {
    private final ScheduledExecutorService zza;
    private final zzfxb zzb;
    private final zzedt zzc;
    private final zzgpl<zzefh> zzd;

    public zzedb(ScheduledExecutorService scheduledExecutorService, zzfxb zzfxbVar, zzedt zzedtVar, zzgpl<zzefh> zzgplVar) {
        this.zza = scheduledExecutorService;
        this.zzb = zzfxbVar;
        this.zzc = zzedtVar;
        this.zzd = zzgplVar;
    }

    public final /* synthetic */ zzfxa zza(zzcdq zzcdqVar, int i, Throwable th) throws Exception {
        return this.zzd.zzb().zzd(zzcdqVar, i);
    }

    public final zzfxa<InputStream> zzb(final zzcdq zzcdqVar) {
        zzcjr<InputStream> zzcjrVar;
        String str = zzcdqVar.zzd;
        zzt.zzp();
        if (com.google.android.gms.ads.internal.util.zzt.zzG(str)) {
            zzcjrVar = zzfwq.zzh(new zzeeg(1));
        } else {
            final zzedt zzedtVar = this.zzc;
            synchronized (zzedtVar.zzb) {
                if (zzedtVar.zzc) {
                    zzcjrVar = zzedtVar.zza;
                } else {
                    zzedtVar.zzc = true;
                    zzedtVar.zze = zzcdqVar;
                    zzedtVar.zzf.checkAvailabilityAndConnect();
                    zzedtVar.zza.zzc(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeds
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzedt.this.zza();
                        }
                    }, zzcjm.zzf);
                    zzcjrVar = zzedtVar.zza;
                }
            }
        }
        final int callingUid = Binder.getCallingUid();
        return zzfwq.zzg((zzfwh) zzfwq.zzo(zzfwh.zzw(zzcjrVar), ((Integer) zzbgq.zzc().zzb(zzblj.zzdW)).intValue(), TimeUnit.SECONDS, this.zza), Throwable.class, new zzfvx() { // from class: com.google.android.gms.internal.ads.zzeda
            @Override // com.google.android.gms.internal.ads.zzfvx
            public final zzfxa zza(Object obj) {
                return zzedb.this.zza(zzcdqVar, callingUid, (Throwable) obj);
            }
        }, this.zzb);
    }
}
