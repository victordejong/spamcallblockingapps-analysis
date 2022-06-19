package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/de0.class */
public final class de0 extends C6612j2 implements fe0 {
    public de0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: L3 */
    public final void mo10008L3(zzbdg zzbdgVar, me0 me0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbdgVar);
        C6686l2.m13741f(m14186c0, me0Var);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: U */
    public final void mo10005U(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.fe0
    /* renamed from: f5 */
    public final void mo10003f5(ie0 ie0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, ie0Var);
        m14187J0(2, m14186c0);
    }
}
