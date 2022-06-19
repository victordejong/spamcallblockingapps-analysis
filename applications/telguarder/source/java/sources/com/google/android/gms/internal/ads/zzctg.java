package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctg.class */
public final class zzctg extends zzave implements zzbsu {
    private zzbsx zzguf;
    private zzavf zzguh;
    private zzbyn zzgui;

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zza(IObjectWrapper iObjectWrapper, zzavj zzavjVar) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zza(iObjectWrapper, zzavjVar);
            }
        }
    }

    public final void zza(zzavf zzavfVar) {
        synchronized (this) {
            this.zzguh = zzavfVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final void zza(zzbsx zzbsxVar) {
        synchronized (this) {
            this.zzguf = zzbsxVar;
        }
    }

    public final void zza(zzbyn zzbynVar) {
        synchronized (this) {
            this.zzgui = zzbynVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaf(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzaf(iObjectWrapper);
            }
            zzbyn zzbynVar = this.zzgui;
            if (zzbynVar != null) {
                zzbynVar.onInitializationSucceeded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzag(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzag(iObjectWrapper);
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzah(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzah(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzai(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzai(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzaj(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzaj(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzak(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzak(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzal(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzal(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzam(IObjectWrapper iObjectWrapper) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzam(iObjectWrapper);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzb(Bundle bundle) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzb(bundle);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zzd(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zzd(iObjectWrapper, i);
            }
            zzbyn zzbynVar = this.zzgui;
            if (zzbynVar != null) {
                zzbynVar.zzdy(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzavf
    public final void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        synchronized (this) {
            zzavf zzavfVar = this.zzguh;
            if (zzavfVar != null) {
                zzavfVar.zze(iObjectWrapper, i);
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.onAdFailedToLoad(i);
            }
        }
    }
}
