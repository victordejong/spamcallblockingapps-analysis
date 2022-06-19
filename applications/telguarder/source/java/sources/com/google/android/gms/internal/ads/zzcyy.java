package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzd;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcyy.class */
public final class zzcyy {
    private zzyx zzadv;
    private boolean zzafd = false;
    private final String zzbut;
    private final zzczc<zzbnt> zzgyx;

    public zzcyy(zzczc<zzbnt> zzczcVar, String str) {
        this.zzgyx = zzczcVar;
        this.zzbut = str;
    }

    public final String getMediationAdapterClassName() {
        synchronized (this) {
            try {
                zzyx zzyxVar = this.zzadv;
                if (zzyxVar == null) {
                    return null;
                }
                return zzyxVar.getMediationAdapterClassName();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }

    public final boolean isLoading() throws RemoteException {
        boolean isLoading;
        synchronized (this) {
            isLoading = this.zzgyx.isLoading();
        }
        return isLoading;
    }

    public final void zza(zzvl zzvlVar, int i) throws RemoteException {
        synchronized (this) {
            this.zzadv = null;
            this.zzafd = this.zzgyx.zza(zzvlVar, this.zzbut, new zzczd(i), new zzcyx(this));
        }
    }

    public final String zzkh() {
        synchronized (this) {
            try {
                zzyx zzyxVar = this.zzadv;
                if (zzyxVar == null) {
                    return null;
                }
                return zzyxVar.getMediationAdapterClassName();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
                return null;
            }
        }
    }
}
