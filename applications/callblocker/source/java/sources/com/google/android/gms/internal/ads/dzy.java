package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dzy.class */
public final class dzy extends dkj implements dzw {
    public dzy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.dzw
    /* renamed from: a */
    public final void mo8125a(String str, String str2) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(1, m9326y);
    }
}
