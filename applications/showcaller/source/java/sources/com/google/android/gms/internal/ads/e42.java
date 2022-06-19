package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e42.class */
public final class e42 implements AbstractC6673kq, qa1 {

    /* renamed from: d */
    private AbstractC6377cs f22029d;

    /* renamed from: a */
    public final void m15563a(AbstractC6377cs abstractC6377cs) {
        synchronized (this) {
            this.f22029d = abstractC6377cs;
        }
    }

    @Override // com.google.android.gms.internal.ads.qa1
    /* renamed from: b */
    public final void mo7917b() {
        synchronized (this) {
            AbstractC6377cs abstractC6377cs = this.f22029d;
            if (abstractC6377cs != null) {
                try {
                    abstractC6377cs.mo13457b();
                } catch (RemoteException e) {
                    ei0.m15463g("Remote Exception at onPhysicalClick.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6673kq
    /* renamed from: z0 */
    public final void mo7877z0() {
        synchronized (this) {
            AbstractC6377cs abstractC6377cs = this.f22029d;
            if (abstractC6377cs != null) {
                try {
                    abstractC6377cs.mo13457b();
                } catch (RemoteException e) {
                    ei0.m15463g("Remote Exception at onAdClicked.", e);
                }
            }
        }
    }
}
