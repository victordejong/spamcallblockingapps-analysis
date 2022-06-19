package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bb0.class */
public final class bb0 extends C6612j2 implements db0 {
    public bb0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.db0
    /* renamed from: F0 */
    public final ab0 mo15840F0(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        ya0 ya0Var;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            ya0Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            ya0Var = queryLocalInterface instanceof ab0 ? (ab0) queryLocalInterface : new ya0(readStrongBinder);
        }
        m14188D0.recycle();
        return ya0Var;
    }
}
