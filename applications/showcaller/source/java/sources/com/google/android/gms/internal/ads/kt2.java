package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/kt2.class */
public final class kt2 extends C6612j2 implements IInterface {
    public kt2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.clearcut.IGassClearcut");
    }

    /* renamed from: A4 */
    public final void m13809A4(AbstractC6253a abstractC6253a, String str, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        m14186c0.writeString(null);
        m14187J0(8, m14186c0);
    }

    /* renamed from: V3 */
    public final void m13808V3(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(7, m14186c0);
    }

    /* renamed from: a */
    public final void m13807a() {
        m14187J0(3, m14186c0());
    }

    /* renamed from: a3 */
    public final void m13806a3(int[] iArr) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeIntArray(null);
        m14187J0(4, m14186c0);
    }

    /* renamed from: d0 */
    public final void m13805d0(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(6, m14186c0);
    }

    /* renamed from: y4 */
    public final void m13804y4(byte[] bArr) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeByteArray(bArr);
        m14187J0(5, m14186c0);
    }
}
