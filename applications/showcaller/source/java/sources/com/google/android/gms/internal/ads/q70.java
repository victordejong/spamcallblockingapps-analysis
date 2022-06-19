package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/q70.class */
public final class q70 extends C6612j2 implements s70 {
    public q70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: P2 */
    public final boolean mo11104P2(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        Parcel m14188D0 = m14188D0(4, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: p */
    public final r90 mo11103p(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        Parcel m14188D0 = m14188D0(3, m14186c0);
        r90 m12009E6 = q90.m12009E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m12009E6;
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: r */
    public final v70 mo11102r(String str) {
        t70 t70Var;
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            t70Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            t70Var = queryLocalInterface instanceof v70 ? (v70) queryLocalInterface : new t70(readStrongBinder);
        }
        m14188D0.recycle();
        return t70Var;
    }

    @Override // com.google.android.gms.internal.ads.s70
    /* renamed from: y */
    public final boolean mo11101y(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }
}
