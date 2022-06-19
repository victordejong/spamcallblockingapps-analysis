package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.wy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/wy.class */
public final class C7125wy extends C6612j2 implements AbstractC7199yy {
    public C7125wy(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7199yy
    /* renamed from: b */
    public final String mo8662b() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7199yy
    /* renamed from: c */
    public final List<AbstractC6533gz> mo8661c() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        ArrayList m13740g = C6686l2.m13740g(m14188D0);
        m14188D0.recycle();
        return m13740g;
    }
}
