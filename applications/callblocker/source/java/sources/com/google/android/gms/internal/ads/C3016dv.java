package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.dv */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dv.class */
public final class C3016dv extends dkj implements AbstractC3014dt {
    public C3016dv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3014dt
    /* renamed from: a */
    public final void mo8517a() {
        m9328b(2, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3014dt
    /* renamed from: a */
    public final void mo8516a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(1, m9326y);
    }
}
