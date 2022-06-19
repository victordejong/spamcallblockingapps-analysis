package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wg0.class */
public final class wg0 extends C6612j2 implements yg0 {
    public wg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.yg0
    /* renamed from: w6 */
    public final void mo8828w6(AbstractC6253a abstractC6253a, zzcfr zzcfrVar, vg0 vg0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzcfrVar);
        C6686l2.m13741f(m14186c0, vg0Var);
        m14187J0(1, m14186c0);
    }
}
