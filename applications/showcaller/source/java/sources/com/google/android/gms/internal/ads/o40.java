package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/o40.class */
public final class o40 extends C6612j2 implements q40 {
    public o40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.q40
    /* renamed from: A */
    public final void mo12034A(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.q40
    /* renamed from: c5 */
    public final void mo12033c5(k40 k40Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, k40Var);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.q40
    /* renamed from: x */
    public final void mo12032x(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(3, m14186c0);
    }
}
