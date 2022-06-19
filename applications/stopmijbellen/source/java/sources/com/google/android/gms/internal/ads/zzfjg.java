package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.Build;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import java.util.HashMap;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfjg.class */
public final class zzfjg implements Runnable {
    public static Boolean zza;
    private final Context zzb;
    private final zzcjf zzc;
    private String zze;
    private int zzf;
    private final zzefm zzh;
    private final zzcec zzi;
    private final zzfjl zzd = zzfjo.zzc();
    private boolean zzg = false;

    public zzfjg(Context context, zzcjf zzcjfVar, zzefm zzefmVar, zzcec zzcecVar, byte[] bArr) {
        this.zzb = context;
        this.zzc = zzcjfVar;
        this.zzh = zzefmVar;
        this.zzi = zzcecVar;
    }

    public static boolean zzb() {
        boolean booleanValue;
        synchronized (zzfjg.class) {
            try {
                if (zza == null) {
                    if (!zzbmr.zzb.zze().booleanValue()) {
                        zza = Boolean.FALSE;
                    } else {
                        zza = Boolean.valueOf(Math.random() < zzbmr.zza.zze().doubleValue());
                    }
                }
                booleanValue = zza.booleanValue();
            } catch (Throwable th) {
                throw th;
            }
        }
        return booleanValue;
    }

    private final void zzc() {
        synchronized (this) {
            if (this.zzg) {
                return;
            }
            this.zzg = true;
            if (!zzb()) {
                return;
            }
            zzt.zzp();
            this.zze = com.google.android.gms.ads.internal.util.zzt.zzv(this.zzb);
            this.zzf = GoogleApiAvailabilityLight.getInstance().getApkVersion(this.zzb);
            long intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzgv)).intValue();
            zzcjm.zzd.scheduleAtFixedRate(this, intValue, intValue, TimeUnit.MILLISECONDS);
        }
    }

    private final void zzd() {
        synchronized (this) {
            try {
                new zzefl(this.zzb, this.zzc.zza, this.zzi, Binder.getCallingUid(), null).zza(new zzefj((String) zzbgq.zzc().zzb(zzblj.zzgu), 60000, new HashMap(), this.zzd.zzah().zzar(), "application/x-protobuf"));
            } catch (Exception e) {
                if (!(e instanceof zzecd) || ((zzecd) e).zza() != 3) {
                    zzt.zzo().zzr(e, "CuiMonitor.sendCuiPing");
                } else {
                    this.zzd.zzc();
                }
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this) {
            if (!zzb()) {
                return;
            }
            if (this.zzd.zza() == 0) {
                return;
            }
            zzd();
        }
    }

    public final void zza(zzfjf zzfjfVar) {
        synchronized (this) {
            if (!this.zzg) {
                zzc();
            }
            if (!zzb()) {
                return;
            }
            if (zzfjfVar == null) {
                return;
            }
            zzfjl zzfjlVar = this.zzd;
            zzfjm zza2 = zzfjn.zza();
            zzfji zza3 = zzfjj.zza();
            zza3.zzo(7);
            zza3.zzl(zzfjfVar.zzh());
            zza3.zze(zzfjfVar.zzb());
            zza3.zzq(3);
            zza3.zzk(this.zzc.zza);
            zza3.zza(this.zze);
            zza3.zzi(Build.VERSION.RELEASE);
            zza3.zzm(Build.VERSION.SDK_INT);
            zza3.zzp(zzfjfVar.zzj());
            zza3.zzh(zzfjfVar.zza());
            zza3.zzc(this.zzf);
            zza3.zzn(zzfjfVar.zzi());
            zza3.zzb(zzfjfVar.zzc());
            zza3.zzd(zzfjfVar.zzd());
            zza3.zzf(zzfjfVar.zze());
            zza3.zzg(zzfjfVar.zzf());
            zza3.zzj(zzfjfVar.zzg());
            zza2.zza(zza3);
            zzfjlVar.zzb(zza2);
        }
    }
}
