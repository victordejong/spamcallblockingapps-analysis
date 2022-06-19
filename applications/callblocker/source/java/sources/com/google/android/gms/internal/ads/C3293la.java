package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.la */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/la.class */
public final class C3293la extends dkj implements AbstractC3289kx {
    public C3293la(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final String mo7612a() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final void mo7611a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(11, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: a */
    public final void mo7610a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        dkk.m9324a(m9326y, abstractC2731a3);
        m9328b(22, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: b */
    public final List mo7609b() {
        Parcel m9329a = m9329a(3, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: b */
    public final void mo7608b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(12, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: c */
    public final String mo7607c() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: c */
    public final void mo7606c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(16, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: d */
    public final AbstractC2844bu mo7605d() {
        Parcel m9329a = m9329a(5, m9326y());
        AbstractC2844bu m11567a = AbstractBinderC2848bx.m11567a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11567a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: e */
    public final String mo7604e() {
        Parcel m9329a = m9329a(6, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: f */
    public final double mo7603f() {
        Parcel m9329a = m9329a(7, m9326y());
        double readDouble = m9329a.readDouble();
        m9329a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: g */
    public final String mo7602g() {
        Parcel m9329a = m9329a(8, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: h */
    public final String mo7601h() {
        Parcel m9329a = m9329a(9, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: i */
    public final void mo7600i() {
        m9328b(10, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: j */
    public final boolean mo7599j() {
        Parcel m9329a = m9329a(13, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: k */
    public final boolean mo7598k() {
        Parcel m9329a = m9329a(14, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: l */
    public final Bundle mo7597l() {
        Parcel m9329a = m9329a(15, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: m */
    public final eba mo7596m() {
        Parcel m9329a = m9329a(17, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: n */
    public final AbstractC2731a mo7595n() {
        Parcel m9329a = m9329a(18, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: o */
    public final AbstractC2837bn mo7594o() {
        Parcel m9329a = m9329a(19, m9326y());
        AbstractC2837bn m11718a = AbstractBinderC2840bq.m11718a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11718a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: p */
    public final AbstractC2731a mo7593p() {
        Parcel m9329a = m9329a(20, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3289kx
    /* renamed from: q */
    public final AbstractC2731a mo7592q() {
        Parcel m9329a = m9329a(21, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }
}
