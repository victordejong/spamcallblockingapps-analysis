package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dw.class */
public final class C3017dw extends dkj implements AbstractC3015du {
    public C3017dw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final String mo8482a() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final void mo8481a(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(15, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final void mo8480a(AbstractC3014dt abstractC3014dt) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC3014dt);
        m9328b(21, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final void mo8479a(eah eahVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, eahVar);
        m9328b(26, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final void mo8478a(eal ealVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, ealVar);
        m9328b(25, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: a */
    public final void mo8477a(eau eauVar) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, eauVar);
        m9328b(32, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: b */
    public final List mo8476b() {
        Parcel m9329a = m9329a(3, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: b */
    public final boolean mo8475b(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        Parcel m9329a = m9329a(16, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: c */
    public final String mo8474c() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: c */
    public final void mo8473c(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(17, m9326y);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bu] */
    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: d */
    public final AbstractC2844bu mo8472d() {
        C2847bw c2847bw;
        Parcel m9329a = m9329a(5, m9326y());
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

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: e */
    public final String mo8471e() {
        Parcel m9329a = m9329a(6, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: f */
    public final String mo8470f() {
        Parcel m9329a = m9329a(7, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: g */
    public final double mo8469g() {
        Parcel m9329a = m9329a(8, m9326y());
        double readDouble = m9329a.readDouble();
        m9329a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: h */
    public final String mo8468h() {
        Parcel m9329a = m9329a(9, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: i */
    public final String mo8467i() {
        Parcel m9329a = m9329a(10, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: j */
    public final eba mo8466j() {
        Parcel m9329a = m9329a(11, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: k */
    public final String mo8465k() {
        Parcel m9329a = m9329a(12, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: l */
    public final void mo8464l() {
        m9328b(13, m9326y());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bn] */
    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: m */
    public final AbstractC2837bn mo8463m() {
        C2839bp c2839bp;
        Parcel m9329a = m9329a(14, m9326y());
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

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: n */
    public final AbstractC2731a mo8462n() {
        Parcel m9329a = m9329a(18, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: o */
    public final AbstractC2731a mo8461o() {
        Parcel m9329a = m9329a(19, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: p */
    public final Bundle mo8460p() {
        Parcel m9329a = m9329a(20, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: q */
    public final void mo8459q() {
        m9328b(22, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: r */
    public final List mo8458r() {
        Parcel m9329a = m9329a(23, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: s */
    public final boolean mo8457s() {
        Parcel m9329a = m9329a(24, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: t */
    public final void mo8456t() {
        m9328b(27, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: u */
    public final void mo8455u() {
        m9328b(28, m9326y());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bt] */
    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: v */
    public final AbstractC2843bt mo8454v() {
        C2846bv c2846bv;
        Parcel m9329a = m9329a(29, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c2846bv = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IMediaContent");
            c2846bv = queryLocalInterface instanceof AbstractC2843bt ? (AbstractC2843bt) queryLocalInterface : new C2846bv(readStrongBinder);
        }
        m9329a.recycle();
        return c2846bv;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: w */
    public final boolean mo8453w() {
        Parcel m9329a = m9329a(30, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3015du
    /* renamed from: x */
    public final eav mo8452x() {
        Parcel m9329a = m9329a(31, m9326y());
        eav m8093a = eay.m8093a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8093a;
    }
}
