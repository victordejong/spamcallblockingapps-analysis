package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/btb.class */
public final class btb implements dxs {
    @GuardedBy("this")

    /* renamed from: a */
    private dyz f12210a;

    /* renamed from: a */
    public final void m11657a(dyz dyzVar) {
        synchronized (this) {
            this.f12210a = dyzVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.dxs
    /* renamed from: e */
    public final void mo8200e() {
        synchronized (this) {
            if (this.f12210a != null) {
                try {
                    this.f12210a.mo8140a();
                } catch (RemoteException e) {
                    C3556uu.m6746d("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }
}
