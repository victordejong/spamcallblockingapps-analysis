package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzctd.class */
public final class zzctd extends zzann implements zzbsu {
    private zzank zzdox;
    private zzbsx zzguf;

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClicked() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdClicked();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdClosed() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdClosed();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdFailedToLoad(int i) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdFailedToLoad(i);
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.onAdFailedToLoad(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdImpression() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdImpression();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLeftApplication() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdLeftApplication();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdLoaded() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdLoaded();
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.onAdLoaded();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAdOpened() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAdOpened();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onAppEvent(String str, String str2) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onAppEvent(str, str2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoEnd() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onVideoEnd();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPause() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onVideoPause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void onVideoPlay() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.onVideoPlay();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzafn zzafnVar, String str) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zza(zzafnVar, str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzanp zzanpVar) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zza(zzanpVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zza(zzavl zzavlVar) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zza(zzavlVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbsu
    public final void zza(zzbsx zzbsxVar) {
        synchronized (this) {
            this.zzguf = zzbsxVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(Bundle bundle) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzb(bundle);
            }
        }
    }

    public final void zzb(zzank zzankVar) {
        synchronized (this) {
            this.zzdox = zzankVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzb(zzavj zzavjVar) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzb(zzavjVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzc(int i, String str) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzc(i, str);
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.zzf(i, str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzd(zzvg zzvgVar) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzd(zzvgVar);
            }
            zzbsx zzbsxVar = this.zzguf;
            if (zzbsxVar != null) {
                zzbsxVar.zzc(zzvgVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdb(int i) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzdb(i);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdi(String str) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzdi(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzdj(String str) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzdj(str);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzf(zzvg zzvgVar) throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzf(zzvgVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzve() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzve();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzank
    public final void zzvf() throws RemoteException {
        synchronized (this) {
            zzank zzankVar = this.zzdox;
            if (zzankVar != null) {
                zzankVar.zzvf();
            }
        }
    }
}
