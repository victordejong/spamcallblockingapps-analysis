package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzarb;
import com.google.android.gms.internal.ads.zzux;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/overlay/zzs.class */
public final class zzs extends zzarb {

    /* renamed from: a */
    public AdOverlayInfoParcel f22784a;

    /* renamed from: b */
    public Activity f22785b;

    /* renamed from: c */
    public boolean f22786c = false;

    /* renamed from: d */
    public boolean f22787d = false;

    public zzs(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.f22784a = adOverlayInfoParcel;
        this.f22785b = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: G */
    public final void mo16407G(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: N1 */
    public final void mo16406N1() throws RemoteException {
    }

    /* renamed from: Q1 */
    public final void m18000Q1() {
        synchronized (this) {
            if (!this.f22787d) {
                if (this.f22784a.f22731c != null) {
                    this.f22784a.f22731c.mo13537B1();
                }
                this.f22787d = true;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: W1 */
    public final boolean mo16405W1() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: a */
    public final void mo16404a(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: l0 */
    public final void mo16403l0() throws RemoteException {
        if (this.f22785b.isFinishing()) {
            m18000Q1();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onBackPressed() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onCreate(Bundle bundle) {
        zzp zzpVar;
        boolean z = false;
        if (bundle != null) {
            z = false;
            if (bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
                z = true;
            }
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f22784a;
        if (adOverlayInfoParcel == null) {
            this.f22785b.finish();
        } else if (z) {
            this.f22785b.finish();
        } else {
            if (bundle == null) {
                zzux zzuxVar = adOverlayInfoParcel.f22730b;
                if (zzuxVar != null) {
                    zzuxVar.onAdClicked();
                }
                if (!(this.f22785b.getIntent() == null || !this.f22785b.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) || (zzpVar = this.f22784a.f22731c) == null)) {
                    zzpVar.mo13529u1();
                }
            }
            zzp.m17971a();
            Activity activity = this.f22785b;
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f22784a;
            if (!zza.m18019a(activity, adOverlayInfoParcel2.f22729a, adOverlayInfoParcel2.f22737i)) {
                this.f22785b.finish();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onDestroy() throws RemoteException {
        if (this.f22785b.isFinishing()) {
            m18000Q1();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onPause() throws RemoteException {
        zzp zzpVar = this.f22784a.f22731c;
        if (zzpVar != null) {
            zzpVar.onPause();
        }
        if (this.f22785b.isFinishing()) {
            m18000Q1();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onResume() throws RemoteException {
        if (this.f22786c) {
            this.f22785b.finish();
            return;
        }
        this.f22786c = true;
        zzp zzpVar = this.f22784a.f22731c;
        if (zzpVar != null) {
            zzpVar.onResume();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.f22786c);
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    public final void onStart() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.ads.zzaqy
    /* renamed from: w0 */
    public final void mo16402w0() throws RemoteException {
    }
}
