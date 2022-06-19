package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.bp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bp.class */
public final class C2839bp extends dkj implements AbstractC2837bn {
    public C2839bp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2837bn
    /* renamed from: a */
    public final String mo11738a() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2837bn
    /* renamed from: b */
    public final List<AbstractC2844bu> mo11737b() {
        Parcel m9329a = m9329a(3, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }
}
