package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.ez */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ez.class */
public final class C6459ez extends C6612j2 implements AbstractC6533gz {
    public C6459ez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdImage");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: a */
    public final int mo11258a() {
        Parcel m14188D0 = m14188D0(4, m14186c0());
        int readInt = m14188D0.readInt();
        m14188D0.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: b */
    public final AbstractC6253a mo11257b() {
        Parcel m14188D0 = m14188D0(1, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: c */
    public final Uri mo11256c() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        Uri uri = (Uri) C6686l2.m13744c(m14188D0, Uri.CREATOR);
        m14188D0.recycle();
        return uri;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: d */
    public final int mo11255d() {
        Parcel m14188D0 = m14188D0(5, m14186c0());
        int readInt = m14188D0.readInt();
        m14188D0.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6533gz
    /* renamed from: e */
    public final double mo11254e() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        double readDouble = m14188D0.readDouble();
        m14188D0.recycle();
        return readDouble;
    }
}
