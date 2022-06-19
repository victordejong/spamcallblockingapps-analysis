package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bte.class */
public final class bte implements AbstractC2792app, apv, aqi, arg, dxs {
    @GuardedBy("this")

    /* renamed from: a */
    private dza f12213a;

    @Override // com.google.android.gms.internal.ads.arg
    /* renamed from: a */
    public final void mo11427a() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8136c();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdLoaded.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.apv
    /* renamed from: a */
    public final void mo11258a(int i) {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8138a(i);
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdFailedToLoad.", e);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m11653a(dza dzaVar) {
        synchronized (this) {
            this.f12213a = dzaVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: a */
    public final void mo11421a(AbstractC3445qr abstractC3445qr, String str, String str2) {
    }

    @Override // com.google.android.gms.internal.ads.aqi
    /* renamed from: b */
    public final void mo11652b() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8133f();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdImpression.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: c */
    public final void mo11414c() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8135d();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdOpened.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: d */
    public final void mo11413d() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8139a();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdClosed.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8134e();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: f */
    public final void mo11412f() {
        synchronized (this) {
            if (this.f12213a != null) {
                try {
                    this.f12213a.mo8137b();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdLeftApplication.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: g */
    public final void mo11411g() {
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2792app
    /* renamed from: h */
    public final void mo11410h() {
    }

    /* renamed from: i */
    public final dza m11651i() {
        dza dzaVar;
        synchronized (this) {
            dzaVar = this.f12213a;
        }
        return dzaVar;
    }
}
