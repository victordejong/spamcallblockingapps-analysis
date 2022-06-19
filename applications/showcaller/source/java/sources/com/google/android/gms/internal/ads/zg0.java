package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zg0.class */
public final class zg0 extends C6612j2 implements bh0 {
    public zg0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.bh0
    /* renamed from: F0 */
    public final yg0 mo8399F0(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        wg0 wg0Var;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            wg0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            wg0Var = queryLocalInterface instanceof yg0 ? (yg0) queryLocalInterface : new wg0(readStrongBinder);
        }
        m14188D0.recycle();
        return wg0Var;
    }
}
