package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.gk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gk.class */
public final class C3168gk extends dkj implements AbstractC3166gi {
    public C3168gk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3166gi
    /* renamed from: a */
    public final void mo7814a(List<C3159gb> list) {
        Parcel m9326y = m9326y();
        m9326y.writeTypedList(list);
        m9328b(1, m9326y);
    }
}
