package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.cm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/cm.class */
public final class C6371cm extends C6612j2 implements IInterface {
    public C6371cm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    /* renamed from: A4 */
    public final long m16024A4(zzayn zzaynVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzaynVar);
        Parcel m14188D0 = m14188D0(3, m14186c0);
        long readLong = m14188D0.readLong();
        m14188D0.recycle();
        return readLong;
    }

    /* renamed from: a3 */
    public final zzayk m16023a3(zzayn zzaynVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzaynVar);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        zzayk zzaykVar = (zzayk) C6686l2.m13744c(m14188D0, zzayk.CREATOR);
        m14188D0.recycle();
        return zzaykVar;
    }

    /* renamed from: y4 */
    public final zzayk m16022y4(zzayn zzaynVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzaynVar);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        zzayk zzaykVar = (zzayk) C6686l2.m13744c(m14188D0, zzayk.CREATOR);
        m14188D0.recycle();
        return zzaykVar;
    }
}
