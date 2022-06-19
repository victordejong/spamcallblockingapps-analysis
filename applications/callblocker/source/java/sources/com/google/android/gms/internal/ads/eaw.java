package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eaw.class */
public final class eaw extends dkj implements eau {
    public eaw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.eau
    /* renamed from: a */
    public final void mo7912a(dyf dyfVar) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyfVar);
        m9328b(1, m9326y);
    }
}
