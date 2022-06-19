package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.ads.AbstractBinderC12867qy;
import com.google.android.gms.internal.ads.C12187aq;
import com.google.android.gms.internal.ads.ekb;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzu.class */
public final class zzu extends AbstractBinderC12867qy {
    private Activity zzaax;
    private AdOverlayInfoParcel zzdus;
    private boolean zzdth = false;
    private boolean zzdut = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.zzdus = adOverlayInfoParcel;
        this.zzaax = activity;
    }

    private final void zzwr() {
        synchronized (this) {
            if (!this.zzdut) {
                if (this.zzdus.zzduf != null) {
                    this.zzdus.zzduf.zza(zzl.OTHER);
                }
                this.zzdut = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onBackPressed() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onCreate(Bundle bundle) {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42938fj)).booleanValue()) {
            this.zzaax.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.zzdus;
        if (adOverlayInfoParcel == null) {
            this.zzaax.finish();
        } else if (z) {
            this.zzaax.finish();
        } else {
            if (bundle == null) {
                if (adOverlayInfoParcel.zzchr != null) {
                    this.zzdus.zzchr.onAdClicked();
                }
                if (this.zzaax.getIntent() != null && this.zzaax.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && this.zzdus.zzduf != null) {
                    this.zzdus.zzduf.zzvz();
                }
            }
            zzr.zzkt();
            if (zza.zza(this.zzaax, this.zzdus.zzdue, this.zzdus.zzduj, this.zzdus.zzdue.zzdjj)) {
                return;
            }
            this.zzaax.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onDestroy() throws RemoteException {
        if (this.zzaax.isFinishing()) {
            zzwr();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onPause() throws RemoteException {
        if (this.zzdus.zzduf != null) {
            this.zzdus.zzduf.onPause();
        }
        if (this.zzaax.isFinishing()) {
            zzwr();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onRestart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onResume() throws RemoteException {
        if (this.zzdth) {
            this.zzaax.finish();
            return;
        }
        this.zzdth = true;
        if (this.zzdus.zzduf == null) {
            return;
        }
        this.zzdus.zzduf.onResume();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.zzdth);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onStart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onStop() throws RemoteException {
        if (this.zzaax.isFinishing()) {
            zzwr();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void onUserLeaveHint() throws RemoteException {
        if (this.zzdus.zzduf != null) {
            this.zzdus.zzduf.onUserLeaveHint();
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void zzae(AbstractC12126b abstractC12126b) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final void zzdq() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12868qz
    public final boolean zzwh() throws RemoteException {
        return false;
    }
}
