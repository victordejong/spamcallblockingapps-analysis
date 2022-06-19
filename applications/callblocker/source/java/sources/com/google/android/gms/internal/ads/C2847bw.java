package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.bw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bw.class */
public final class C2847bw extends dkj implements AbstractC2844bu {
    public C2847bw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: a */
    public final AbstractC2731a mo11584a() {
        Parcel m9329a = m9329a(1, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: b */
    public final Uri mo11583b() {
        Parcel m9329a = m9329a(2, m9326y());
        Uri uri = (Uri) dkk.m9323a(m9329a, Uri.CREATOR);
        m9329a.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: c */
    public final double mo11582c() {
        Parcel m9329a = m9329a(3, m9326y());
        double readDouble = m9329a.readDouble();
        m9329a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: d */
    public final int mo11581d() {
        Parcel m9329a = m9329a(4, m9326y());
        int readInt = m9329a.readInt();
        m9329a.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2844bu
    /* renamed from: e */
    public final int mo11580e() {
        Parcel m9329a = m9329a(5, m9326y());
        int readInt = m9329a.readInt();
        m9329a.recycle();
        return readInt;
    }
}
