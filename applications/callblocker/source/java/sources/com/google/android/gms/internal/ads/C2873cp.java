package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cp.class */
public final class C2873cp extends dkj implements AbstractC2869cn {
    public C2873cp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: a */
    public final AbstractC2731a mo10916a() {
        Parcel m9329a = m9329a(2, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: a */
    public final void mo10915a(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(12, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: b */
    public final String mo10914b() {
        Parcel m9329a = m9329a(3, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: b */
    public final boolean mo10913b(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        Parcel m9329a = m9329a(13, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: c */
    public final List mo10912c() {
        Parcel m9329a = m9329a(4, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: c */
    public final void mo10911c(Bundle bundle) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, bundle);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: d */
    public final String mo10910d() {
        Parcel m9329a = m9329a(5, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bu] */
    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: e */
    public final AbstractC2844bu mo10909e() {
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

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: f */
    public final String mo10908f() {
        Parcel m9329a = m9329a(7, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: g */
    public final String mo10907g() {
        Parcel m9329a = m9329a(8, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: h */
    public final Bundle mo10906h() {
        Parcel m9329a = m9329a(9, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: i */
    public final void mo10905i() {
        m9328b(10, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: j */
    public final eba mo10904j() {
        Parcel m9329a = m9329a(11, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.bn] */
    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: k */
    public final AbstractC2837bn mo10903k() {
        C2839bp c2839bp;
        Parcel m9329a = m9329a(15, m9326y());
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

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: l */
    public final AbstractC2731a mo10902l() {
        Parcel m9329a = m9329a(16, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2869cn
    /* renamed from: m */
    public final String mo10901m() {
        Parcel m9329a = m9329a(17, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }
}
