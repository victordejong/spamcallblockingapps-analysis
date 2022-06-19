package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvg.class */
public final class dvg extends dkj implements dve {
    public dvg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dve
    /* renamed from: a */
    public final void mo8512a(int i) {
        Parcel m9326y = m9326y();
        m9326y.writeInt(i);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.dve
    /* renamed from: a */
    public final void mo8511a(dvd dvdVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, dvdVar);
        m9328b(1, m9326y);
    }
}
