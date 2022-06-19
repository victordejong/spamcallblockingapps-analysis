package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ae0.class */
public final class ae0 extends C6612j2 implements ce0 {
    public ae0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.ce0
    /* renamed from: a */
    public final String mo10036a() {
        Parcel m14188D0 = m14188D0(1, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ce0
    /* renamed from: d */
    public final int mo10035d() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        int readInt = m14188D0.readInt();
        m14188D0.recycle();
        return readInt;
    }
}
