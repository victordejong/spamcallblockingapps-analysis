package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.or */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/or.class */
public final class C3391or extends dkj implements AbstractC3389op {
    public C3391or(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3389op
    /* renamed from: a */
    public final void mo7357a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(2, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3389op
    /* renamed from: a */
    public final void mo7356a(List<Uri> list) {
        Parcel m9326y = m9326y();
        m9326y.writeTypedList(list);
        m9328b(1, m9326y);
    }
}
