package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelt.class */
public final class zzelt {
    private final zzely<zzcxg> zza;
    private final String zzb;
    private zzbgz zzc;

    public zzelt(zzely<zzcxg> zzelyVar, String str) {
        this.zza = zzelyVar;
        this.zzb = str;
    }

    public final boolean zzb() throws RemoteException {
        boolean zzb;
        synchronized (this) {
            zzb = this.zza.zzb();
        }
        return zzb;
    }

    public final void zzc(zzbdg zzbdgVar, int i) throws RemoteException {
        synchronized (this) {
            this.zzc = null;
            this.zza.zza(zzbdgVar, this.zzb, new zzelz(i), new zzels(this));
        }
    }

    public final String zzd() {
        String str;
        synchronized (this) {
            str = null;
            try {
                zzbgz zzbgzVar = this.zzc;
                if (zzbgzVar != null) {
                    str = zzbgzVar.zze();
                }
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }

    public final String zze() {
        String str;
        synchronized (this) {
            str = null;
            try {
                zzbgz zzbgzVar = this.zzc;
                if (zzbgzVar != null) {
                    str = zzbgzVar.zze();
                }
            } catch (RemoteException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
                return null;
            }
        }
        return str;
    }
}
