package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ge0.class */
public final class ge0 extends C6612j2 implements ie0 {
    public ge0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: G3 */
    public final void mo9608G3(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: a */
    public final void mo9607a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: d */
    public final void mo9606d() {
        m14187J0(2, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: d0 */
    public final void mo9605d0(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(4, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: g */
    public final void mo9604g() {
        m14187J0(6, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: h */
    public final void mo9603h() {
        m14187J0(7, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ie0
    /* renamed from: y2 */
    public final void mo9602y2(ce0 ce0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, ce0Var);
        m14187J0(3, m14186c0);
    }
}
