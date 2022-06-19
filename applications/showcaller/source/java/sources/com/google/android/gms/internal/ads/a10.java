package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/a10.class */
public final class a10 extends C6612j2 implements c10 {
    public a10(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: a */
    public final String mo16159a() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: d */
    public final List mo16158d() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        ArrayList m13740g = C6686l2.m13740g(m14188D0);
        m14188D0.recycle();
        return m13740g;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: f */
    public final AbstractC6533gz mo16156f() {
        C6459ez c6459ez;
        Parcel m14188D0 = m14188D0(5, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6459ez = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            c6459ez = queryLocalInterface instanceof AbstractC6533gz ? (AbstractC6533gz) queryLocalInterface : new C6459ez(readStrongBinder);
        }
        m14188D0.recycle();
        return c6459ez;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: g */
    public final String mo16155g() {
        Parcel m14188D0 = m14188D0(7, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: h */
    public final double mo16154h() {
        Parcel m14188D0 = m14188D0(8, m14186c0());
        double readDouble = m14188D0.readDouble();
        m14188D0.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: i */
    public final String mo16152i() {
        Parcel m14188D0 = m14188D0(9, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: j */
    public final String mo16151j() {
        Parcel m14188D0 = m14188D0(10, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: k */
    public final AbstractC7199yy mo16150k() {
        C7125wy c7125wy;
        Parcel m14188D0 = m14188D0(14, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c7125wy = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            c7125wy = queryLocalInterface instanceof AbstractC7199yy ? (AbstractC7199yy) queryLocalInterface : new C7125wy(readStrongBinder);
        }
        m14188D0.recycle();
        return c7125wy;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: m */
    public final AbstractC6640ju mo16147m() {
        Parcel m14188D0 = m14188D0(11, m14186c0());
        AbstractC6640ju m14272E6 = AbstractBinderC6603iu.m14272E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m14272E6;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: q */
    public final List mo16145q() {
        Parcel m14188D0 = m14188D0(23, m14186c0());
        ArrayList m13740g = C6686l2.m13740g(m14188D0);
        m14188D0.recycle();
        return m13740g;
    }

    @Override // com.google.android.gms.internal.ads.c10
    /* renamed from: w */
    public final AbstractC6253a mo16141w() {
        Parcel m14188D0 = m14188D0(19, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.c10
    public final String zzg() {
        Parcel m14188D0 = m14188D0(4, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    public final String zzi() {
        Parcel m14188D0 = m14188D0(6, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.c10
    public final AbstractC6253a zzu() {
        Parcel m14188D0 = m14188D0(18, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }
}
