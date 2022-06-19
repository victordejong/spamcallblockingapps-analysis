package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.BaseGmsClient;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsz.class */
public final class zzsz {
    private Context context;
    private zzte zzbve;
    private zzti zzbvf;
    private final Runnable zzbvd = new zzsy(this);
    private final Object lock = new Object();

    public final void connect() {
        synchronized (this.lock) {
            if (this.context != null && this.zzbve == null) {
                zzte zza = zza(new zzta(this), new zztd(this));
                this.zzbve = zza;
                zza.checkAvailabilityAndConnect();
            }
        }
    }

    public final void disconnect() {
        synchronized (this.lock) {
            zzte zzteVar = this.zzbve;
            if (zzteVar == null) {
                return;
            }
            if (zzteVar.isConnected() || this.zzbve.isConnecting()) {
                this.zzbve.disconnect();
            }
            this.zzbve = null;
            this.zzbvf = null;
            Binder.flushPendingCommands();
        }
    }

    private final zzte zza(BaseGmsClient.BaseConnectionCallbacks baseConnectionCallbacks, BaseGmsClient.BaseOnConnectionFailedListener baseOnConnectionFailedListener) {
        zzte zzteVar;
        synchronized (this) {
            zzteVar = new zzte(this.context, zzr.zzlf().zzzp(), baseConnectionCallbacks, baseOnConnectionFailedListener);
        }
        return zzteVar;
    }

    public final void initialize(Context context) {
        if (context == null) {
            return;
        }
        synchronized (this.lock) {
            if (this.context != null) {
                return;
            }
            this.context = context.getApplicationContext();
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcud)).booleanValue()) {
                connect();
            } else {
                if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcuc)).booleanValue()) {
                    zzr.zzku().zza(new zztb(this));
                }
            }
        }
    }

    public final zztc zza(zzth zzthVar) {
        synchronized (this.lock) {
            if (this.zzbvf == null) {
                return new zztc();
            }
            try {
                if (this.zzbve.zzne()) {
                    return this.zzbvf.zzc(zzthVar);
                }
                return this.zzbvf.zza(zzthVar);
            } catch (RemoteException e) {
                zzd.zzc("Unable to call into cache service.", e);
                return new zztc();
            }
        }
    }

    public final long zzb(zzth zzthVar) {
        synchronized (this.lock) {
            if (this.zzbvf == null) {
                return -2L;
            }
            if (this.zzbve.zzne()) {
                try {
                    return this.zzbvf.zzb(zzthVar);
                } catch (RemoteException e) {
                    zzd.zzc("Unable to call into cache service.", e);
                }
            }
            return -2L;
        }
    }

    public final void zzmv() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcue)).booleanValue()) {
            synchronized (this.lock) {
                connect();
                zzj.zzeen.removeCallbacks(this.zzbvd);
                zzj.zzeen.postDelayed(this.zzbvd, ((Long) zzwr.zzqr().zzd(zzabp.zzcuf)).longValue());
            }
        }
    }
}
