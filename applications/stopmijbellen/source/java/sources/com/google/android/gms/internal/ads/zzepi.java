package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzepi.class */
public final class zzepi {
    private final zzepn<zzdav> zza;
    private final String zzb;
    @GuardedBy("this")
    private zzbiw zzc;

    public zzepi(zzepn<zzdav> zzepnVar, String str) {
        this.zza = zzepnVar;
        this.zzb = str;
    }

    public final String zza() {
        String str;
        synchronized (this) {
            str = null;
            try {
                zzbiw zzbiwVar = this.zzc;
                if (zzbiwVar != null) {
                    str = zzbiwVar.zze();
                }
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }

    public final String zzb() {
        String str;
        synchronized (this) {
            str = null;
            try {
                zzbiw zzbiwVar = this.zzc;
                if (zzbiwVar != null) {
                    str = zzbiwVar.zze();
                }
            } catch (RemoteException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }

    public final void zzd(zzbfd zzbfdVar, int i) throws RemoteException {
        synchronized (this) {
            this.zzc = null;
            this.zza.zzb(zzbfdVar, this.zzb, new zzepo(i), new zzeph(this));
        }
    }

    public final boolean zze() throws RemoteException {
        boolean zza;
        synchronized (this) {
            zza = this.zza.zza();
        }
        return zza;
    }
}
