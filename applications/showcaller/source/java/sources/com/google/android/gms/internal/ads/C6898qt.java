package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.qt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/qt.class */
public final class C6898qt extends C6612j2 implements AbstractC6972st {
    public C6898qt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6972st
    /* renamed from: a */
    public final String mo9058a() {
        Parcel m14188D0 = m14188D0(1, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6972st
    /* renamed from: d */
    public final String mo9057d() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }
}
