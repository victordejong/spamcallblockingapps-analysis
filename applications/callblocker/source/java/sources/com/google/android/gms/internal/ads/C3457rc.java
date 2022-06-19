package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.rc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rc.class */
public final class C3457rc extends dkj implements AbstractC3453qz {
    public C3457rc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3453qz
    /* renamed from: a */
    public final IBinder mo7267a(AbstractC2731a abstractC2731a, AbstractC3280ko abstractC3280ko, int i) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3280ko);
        m9326y.writeInt(i);
        Parcel m9329a = m9329a(1, m9326y);
        IBinder readStrongBinder = m9329a.readStrongBinder();
        m9329a.recycle();
        return readStrongBinder;
    }
}
