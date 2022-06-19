package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cl */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cl.class */
public final class C2863cl extends dkj implements AbstractC2861cj {
    public C2863cl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: a */
    public final AbstractC2731a mo11137a() {
        Parcel m9329a = m9329a(2, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: a */
    public final void mo11136a(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: b */
    public final String mo11135b() {
        Parcel m9329a = m9329a(3, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: b */
    public final boolean mo11134b(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        Parcel m9329a = m9329a(15, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: c */
    public final List mo11133c() {
        Parcel m9329a = m9329a(4, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: c */
    public final void mo11132c(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(16, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: d */
    public final String mo11131d() {
        Parcel m9329a = m9329a(5, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bu] */
    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: e */
    public final AbstractC2844bu mo11130e() {
        C2847bw c2847bw;
        Parcel m9329a = m9329a(6, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c2847bw = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            c2847bw = queryLocalInterface instanceof AbstractC2844bu ? (AbstractC2844bu) queryLocalInterface : new C2847bw(readStrongBinder);
        }
        m9329a.recycle();
        return c2847bw;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: f */
    public final String mo11129f() {
        Parcel m9329a = m9329a(7, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: g */
    public final double mo11128g() {
        Parcel m9329a = m9329a(8, m9326y());
        double readDouble = m9329a.readDouble();
        m9329a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: h */
    public final String mo11127h() {
        Parcel m9329a = m9329a(9, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: i */
    public final String mo11126i() {
        Parcel m9329a = m9329a(10, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: j */
    public final Bundle mo11125j() {
        Parcel m9329a = m9329a(11, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: k */
    public final void mo11124k() {
        m9328b(12, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: l */
    public final eba mo11123l() {
        Parcel m9329a = m9329a(13, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bn] */
    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: m */
    public final AbstractC2837bn mo11122m() {
        C2839bp c2839bp;
        Parcel m9329a = m9329a(17, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c2839bp = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            c2839bp = queryLocalInterface instanceof AbstractC2837bn ? (AbstractC2837bn) queryLocalInterface : new C2839bp(readStrongBinder);
        }
        m9329a.recycle();
        return c2839bp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: n */
    public final AbstractC2731a mo11121n() {
        Parcel m9329a = m9329a(18, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2861cj
    /* renamed from: o */
    public final String mo11120o() {
        Parcel m9329a = m9329a(19, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }
}
