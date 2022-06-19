package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbes;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzcbr;
import com.google.android.gms.internal.ads.zzdmd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzv.class */
public final class zzv extends zzcbr {
    private final AdOverlayInfoParcel zza;
    private final Activity zzb;
    private boolean zzc = false;
    private boolean zzd = false;

    public zzv(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zza = adOverlayInfoParcel;
        this.zzb = activity;
    }

    private final void zzb() {
        synchronized (this) {
            if (!this.zzd) {
                zzo zzoVar = this.zza.zzc;
                if (zzoVar != null) {
                    zzoVar.zzf(4);
                }
                this.zzd = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final boolean zzE() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzg(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzh() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzk(Bundle bundle) {
        zzo zzoVar;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgy)).booleanValue()) {
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
                zzbes zzbesVar = adOverlayInfoParcel.zzb;
                if (zzbesVar != null) {
                    zzbesVar.onAdClicked();
                }
                zzdmd zzdmdVar = this.zza.zzy;
                if (zzdmdVar != null) {
                    zzdmdVar.zzq();
                }
                if (this.zzb.getIntent() != null && this.zzb.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzoVar = this.zza.zzc) != null) {
                    zzoVar.zzb();
                }
            }
            zzt.zzi();
            Activity activity = this.zzb;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.zza;
            zzc zzcVar = adOverlayInfoParcel2.zza;
            if (zza.zzb(activity, zzcVar, adOverlayInfoParcel2.zzi, zzcVar.zzi)) {
                return;
            }
            this.zzb.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzl() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzn() throws RemoteException {
        zzo zzoVar = this.zza.zzc;
        if (zzoVar != null) {
            zzoVar.zzbz();
        }
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzo() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzp() throws RemoteException {
        if (this.zzc) {
            this.zzb.finish();
            return;
        }
        this.zzc = true;
        zzo zzoVar = this.zza.zzc;
        if (zzoVar == null) {
            return;
        }
        zzoVar.zzbS();
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzq(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzr() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzs() throws RemoteException {
        if (this.zzb.isFinishing()) {
            zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzt() throws RemoteException {
        zzo zzoVar = this.zza.zzc;
        if (zzoVar != null) {
            zzoVar.zze();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbs
    public final void zzv() throws RemoteException {
    }
}
