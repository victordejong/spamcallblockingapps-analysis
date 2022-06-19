package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eax.class */
public final class eax extends dkj implements eav {
    public eax(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.eav
    /* renamed from: a */
    public final String mo8095a() {
        Parcel m9329a = m9329a(1, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eav
    /* renamed from: b */
    public final String mo8094b() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }
}
