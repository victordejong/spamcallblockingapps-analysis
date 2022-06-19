package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzarr;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzw.class */
public final class zzw extends zzarr {
    private Activity zzaas;
    private AdOverlayInfoParcel zzdti;
    private boolean zzdrr = false;
    private boolean zzdtj = false;

    public zzw(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdti = adOverlayInfoParcel;
        this.zzaas = activity;
    }

    private final void zzwh() {
        synchronized (this) {
            if (!this.zzdtj) {
                if (this.zzdti.zzdsv != null) {
                    this.zzdti.zzdsv.zza(zzn.OTHER);
                }
                this.zzdtj = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onBackPressed() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onCreate(Bundle bundle) {
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdti;
        if (adOverlayInfoParcel == null) {
            this.zzaas.finish();
        } else if (z) {
            this.zzaas.finish();
        } else {
            if (bundle == null) {
                if (adOverlayInfoParcel.zzchd != null) {
                    this.zzdti.zzchd.onAdClicked();
                }
                if (this.zzaas.getIntent() != null && this.zzaas.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && this.zzdti.zzdsv != null) {
                    this.zzdti.zzdsv.zzvo();
                }
            }
            zzr.zzkp();
            if (zzb.zza(this.zzaas, this.zzdti.zzdsu, this.zzdti.zzdsz, this.zzdti.zzdsu.zzdif)) {
                return;
            }
            this.zzaas.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onDestroy() throws RemoteException {
        if (this.zzaas.isFinishing()) {
            zzwh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onPause() throws RemoteException {
        if (this.zzdti.zzdsv != null) {
            this.zzdti.zzdsv.onPause();
        }
        if (this.zzaas.isFinishing()) {
            zzwh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onRestart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onResume() throws RemoteException {
        if (this.zzdrr) {
            this.zzaas.finish();
            return;
        }
        this.zzdrr = true;
        if (this.zzdti.zzdsv == null) {
            return;
        }
        this.zzdti.zzdsv.onResume();
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdrr);
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onStop() throws RemoteException {
        if (this.zzaas.isFinishing()) {
            zzwh();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void onUserLeaveHint() throws RemoteException {
        if (this.zzdti.zzdsv != null) {
            this.zzdti.zzdsv.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzad(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final void zzdp() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaro
    public final boolean zzvw() throws RemoteException {
        return false;
    }
}
