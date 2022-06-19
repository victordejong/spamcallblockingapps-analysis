package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ll */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ll.class */
public final class C6705ll extends C6612j2 implements AbstractC6779nl {
    public C6705ll(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6779nl
    /* renamed from: C */
    public final void mo12890C(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6779nl
    /* renamed from: G1 */
    public final void mo12889G1(AbstractC6668kl abstractC6668kl) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6668kl);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6779nl
    /* renamed from: R */
    public final void mo12888R(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(3, m14186c0);
    }
}
