package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/je0.class */
public final class je0 extends C6612j2 implements IInterface {
    public je0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
    }

    /* renamed from: a3 */
    public final IBinder m14136a3(AbstractC6253a abstractC6253a, String str, s70 s70Var, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        m14188D0.recycle();
        return readStrongBinder;
    }
}
