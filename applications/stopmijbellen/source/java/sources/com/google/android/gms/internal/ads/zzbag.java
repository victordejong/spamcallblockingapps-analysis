package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbag.class */
public final class zzbag {
    private final Runnable zza = new zzbac(this);
    private final Object zzb = new Object();
    @GuardedBy("lock")
    private zzbaj zzc;
    @GuardedBy("lock")
    private Context zzd;
    @GuardedBy("lock")
    private zzbam zze;

    public static /* bridge */ /* synthetic */ void zzh(zzbag zzbagVar) {
        synchronized (zzbagVar.zzb) {
            zzbaj zzbajVar = zzbagVar.zzc;
            if (zzbajVar == null) {
                return;
            }
            if (zzbajVar.isConnected() || zzbagVar.zzc.isConnecting()) {
                zzbagVar.zzc.disconnect();
            }
            zzbagVar.zzc = null;
            zzbagVar.zze = null;
            Binder.flushPendingCommands();
        }
    }

    public final void zzl() {
        synchronized (this.zzb) {
            if (this.zzd != null && this.zzc == null) {
                zzbaj zzd = zzd(new zzbae(this), new zzbaf(this));
                this.zzc = zzd;
                zzd.checkAvailabilityAndConnect();
            }
        }
    }

    public final long zza(zzbak zzbakVar) {
        synchronized (this.zzb) {
            if (this.zze == null) {
                return -2L;
            }
            if (this.zzc.zzp()) {
                try {
                    return this.zze.zze(zzbakVar);
                } catch (RemoteException e) {
                    zzciz.zzh("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }

    public final zzbah zzb(zzbak zzbakVar) {
        synchronized (this.zzb) {
            if (this.zze == null) {
                return new zzbah();
            }
            try {
                if (this.zzc.zzp()) {
                    return this.zze.zzg(zzbakVar);
                }
                return this.zze.zzf(zzbakVar);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to call into cache service.", e);
                return new zzbah();
            }
        }
    }

    @VisibleForTesting
    public final zzbaj zzd(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        zzbaj zzbajVar;
        synchronized (this) {
            zzbajVar = new zzbaj(this.zzd, zzt.zzt().zzb(), baseConnectionCallbacks, baseOnConnectionFailedListener);
        }
        return zzbajVar;
    }

    public final void zzi(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.zzb) {
            if (this.zzd != null) {
                return;
            }
            this.zzd = context.getApplicationContext();
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcL)).booleanValue()) {
                zzl();
            } else {
                if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcK)).booleanValue()) {
                    zzt.zzb().zzc(new zzbad(this));
                }
            }
        }
    }

    public final void zzj() {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcM)).booleanValue()) {
            synchronized (this.zzb) {
                zzl();
                zzfpj zzfpjVar = com.google.android.gms.ads.internal.util.zzt.zza;
                zzfpjVar.removeCallbacks(this.zza);
                zzfpjVar.postDelayed(this.zza, ((Long) zzbgq.zzc().zzb(zzblj.zzcN)).longValue());
            }
        }
    }
}
