package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.qt */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qt.class */
public final class C3447qt extends dkj implements AbstractC3445qr {
    public C3447qt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3445qr
    /* renamed from: a */
    public final String mo7292a() {
        Parcel m9329a = m9329a(1, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3445qr
    /* renamed from: b */
    public final int mo7291b() {
        Parcel m9329a = m9329a(2, m9326y());
        int readInt = m9329a.readInt();
        m9329a.recycle();
        return readInt;
    }
}
