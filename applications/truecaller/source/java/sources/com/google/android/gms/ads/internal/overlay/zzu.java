package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbcv;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.android.gms.internal.ads.zzdio;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzu.class */
public final class zzu extends zzbzp {
    private final AdOverlayInfoParcel zza;
    private final Activity zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zza = adOverlayInfoParcel;
        this.zzb = activity;
    }

    private final void zzb() {
        synchronized (this) {
            if (!this.zzd) {
                zzo zzoVar = this.zza.zzc;
                if (zzoVar != null) {
                    zzoVar.zzbs(4);
                }
                this.zzd = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zze() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzf() throws RemoteException {
        zzo zzoVar = this.zza.zzc;
        if (zzoVar != null) {
            zzoVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final boolean zzg() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzh(Bundle bundle) {
        zzo zzoVar;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgn)).booleanValue()) {
            this.zzb.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zza;
        if (adOverlayInfoParcel == null) {
            this.zzb.finish();
        } else if (z) {
            this.zzb.finish();
        } else {
            if (bundle == null) {
                zzbcv zzbcvVar = adOverlayInfoParcel.zzb;
                if (zzbcvVar != null) {
                    zzbcvVar.onAdClicked();
                }
                zzdio zzdioVar = this.zza.zzy;
                if (zzdioVar != null) {
                    zzdioVar.zzb();
                }
                if (this.zzb.getIntent() != null && this.zzb.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzoVar = this.zza.zzc) != null) {
                    zzoVar.zzbp();
                }
            }
            zzt.zza();
            Activity activity = this.zzb;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zza;
            zzc zzcVar = adOverlayInfoParcel2.zza;
            if (zza.zzb(activity, zzcVar, adOverlayInfoParcel2.zzi, zzcVar.zzi)) {
                return;
            }
            this.zzb.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzi() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzj() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzk() throws RemoteException {
        if (this.zzc) {
            this.zzb.finish();
            return;
        }
        this.zzc = true;
        zzo zzoVar = this.zza.zzc;
        if (zzoVar == null) {
            return;
        }
        zzoVar.zzbr();
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzl() throws RemoteException {
        zzo zzoVar = this.zza.zzc;
        if (zzoVar != null) {
            zzoVar.zzbq();
        }
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzm(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzo(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzp() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzq() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzq
    public final void zzs() throws RemoteException {
    }
}
