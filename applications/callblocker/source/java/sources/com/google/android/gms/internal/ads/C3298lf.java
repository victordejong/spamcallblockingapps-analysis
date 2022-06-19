package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lf.class */
public final class C3298lf extends dkj implements AbstractC3296ld {
    public C3298lf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final String mo7556a() {
        Parcel m9329a = m9329a(2, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final void mo7555a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(9, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: a */
    public final void mo7554a(AbstractC2731a abstractC2731a, AbstractC2731a abstractC2731a2, AbstractC2731a abstractC2731a3) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC2731a2);
        dkk.m9324a(m9326y, abstractC2731a3);
        m9328b(22, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: b */
    public final List mo7553b() {
        Parcel m9329a = m9329a(3, m9326y());
        ArrayList m9320b = dkk.m9320b(m9329a);
        m9329a.recycle();
        return m9320b;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: b */
    public final void mo7552b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: c */
    public final String mo7551c() {
        Parcel m9329a = m9329a(4, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: c */
    public final void mo7550c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: d */
    public final AbstractC2844bu mo7549d() {
        Parcel m9329a = m9329a(5, m9326y());
        AbstractC2844bu m11567a = AbstractBinderC2848bx.m11567a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11567a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: e */
    public final String mo7548e() {
        Parcel m9329a = m9329a(6, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: f */
    public final String mo7547f() {
        Parcel m9329a = m9329a(7, m9326y());
        String readString = m9329a.readString();
        m9329a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: g */
    public final void mo7546g() {
        m9328b(8, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: h */
    public final boolean mo7545h() {
        Parcel m9329a = m9329a(11, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: i */
    public final boolean mo7544i() {
        Parcel m9329a = m9329a(12, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: j */
    public final Bundle mo7543j() {
        Parcel m9329a = m9329a(13, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: k */
    public final AbstractC2731a mo7542k() {
        Parcel m9329a = m9329a(15, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: l */
    public final eba mo7541l() {
        Parcel m9329a = m9329a(16, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: m */
    public final AbstractC2837bn mo7540m() {
        Parcel m9329a = m9329a(19, m9326y());
        AbstractC2837bn m11718a = AbstractBinderC2840bq.m11718a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m11718a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: n */
    public final AbstractC2731a mo7539n() {
        Parcel m9329a = m9329a(20, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3296ld
    /* renamed from: o */
    public final AbstractC2731a mo7538o() {
        Parcel m9329a = m9329a(21, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }
}
