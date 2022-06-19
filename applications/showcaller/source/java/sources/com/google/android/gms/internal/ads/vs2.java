package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vs2.class */
public final class vs2 extends C6612j2 implements IInterface {
    public vs2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    /* renamed from: A4 */
    public final zzfkb m9869A4(zzfjz zzfjzVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzfjzVar);
        Parcel m14188D0 = m14188D0(3, m14186c0);
        zzfkb zzfkbVar = (zzfkb) C6686l2.m13744c(m14188D0, zzfkb.CREATOR);
        m14188D0.recycle();
        return zzfkbVar;
    }

    /* renamed from: a3 */
    public final zzfjs m9868a3(zzfjq zzfjqVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzfjqVar);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        zzfjs zzfjsVar = (zzfjs) C6686l2.m13744c(m14188D0, zzfjs.CREATOR);
        m14188D0.recycle();
        return zzfjsVar;
    }

    /* renamed from: y4 */
    public final void m9867y4(zzfjn zzfjnVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzfjnVar);
        m14187J0(2, m14186c0);
    }
}
