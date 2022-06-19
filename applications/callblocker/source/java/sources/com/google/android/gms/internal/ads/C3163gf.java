package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gf.class */
public final class C3163gf extends dkj implements AbstractC3161gd {
    public C3163gf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3161gd
    /* renamed from: a */
    public final void mo7818a() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3161gd
    /* renamed from: a */
    public final void mo7817a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(3, m9326y);
    }
}
