package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvf.class */
public final class dvf extends dkj implements dvd {
    public dvf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    /* renamed from: a */
    public final dzn mo8514a() {
        Parcel m9329a = m9329a(2, m9326y());
        dzn m8131a = dzm.m8131a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8131a;
    }

    @Override // com.google.android.gms.internal.ads.dvd
    /* renamed from: a */
    public final void mo8513a(dvi dviVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, dviVar);
        m9328b(3, m9326y);
    }
}
