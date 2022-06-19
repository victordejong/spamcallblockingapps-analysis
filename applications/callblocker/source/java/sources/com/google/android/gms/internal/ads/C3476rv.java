package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.rv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/rv.class */
public final class C3476rv extends dkj implements AbstractC3474rt {
    public C3476rv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3474rt
    /* renamed from: a */
    public final String mo7195a() {
        Parcel m9329a = m9329a(1, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3474rt
    /* renamed from: b */
    public final int mo7194b() {
        Parcel m9329a = m9329a(2, m9326y());
        int readInt = m9329a.readInt();
        m9329a.recycle();
        return readInt;
    }
}
