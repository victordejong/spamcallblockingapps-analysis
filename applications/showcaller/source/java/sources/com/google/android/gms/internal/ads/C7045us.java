package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.us */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/us.class */
public final class C7045us extends C6612j2 implements IInterface {
    public C7045us(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    /* renamed from: a3 */
    public final IBinder m10178a3(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i, int i2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        m14186c0.writeInt(i2);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        m14188D0.recycle();
        return readStrongBinder;
    }
}
