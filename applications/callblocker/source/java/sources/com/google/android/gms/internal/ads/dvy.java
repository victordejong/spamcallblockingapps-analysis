package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvy.class */
public final class dvy extends dkj implements dvz {
    public dvy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.cache.ICacheService");
    }

    @Override // com.google.android.gms.internal.ads.dvz
    /* renamed from: a */
    public final dvt mo8483a(dvu dvuVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dvuVar);
        Parcel m9329a = m9329a(1, m9326y);
        dvt dvtVar = (dvt) dkk.m9323a(m9329a, dvt.CREATOR);
        m9329a.recycle();
        return dvtVar;
    }
}
