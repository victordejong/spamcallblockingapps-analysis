package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.mp */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/mp.class */
public final class C3335mp extends dkj implements AbstractC3333mn {
    public C3335mp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final C3348nb mo7457a() {
        Parcel m9329a = m9329a(2, m9326y());
        C3348nb c3348nb = (C3348nb) dkk.m9323a(m9329a, C3348nb.CREATOR);
        m9329a.recycle();
        return c3348nb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7456a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7455a(AbstractC2731a abstractC2731a, String str, Bundle bundle, Bundle bundle2, dyd dydVar, AbstractC3334mo abstractC3334mo) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9326y.writeString(str);
        dkk.m9322a(m9326y, bundle);
        dkk.m9322a(m9326y, bundle2);
        dkk.m9322a(m9326y, dydVar);
        dkk.m9324a(m9326y, abstractC3334mo);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7452a(String str) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9328b(19, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7450a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3321mb abstractC3321mb, AbstractC3286ku abstractC3286ku, dyd dydVar) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3321mb);
        dkk.m9324a(m9326y, abstractC3286ku);
        dkk.m9322a(m9326y, dydVar);
        m9328b(13, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7449a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3322mc abstractC3322mc, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3322mc);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7448a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3327mh abstractC3327mh, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3327mh);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(18, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7447a(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3328mi);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(16, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: a */
    public final void mo7446a(String[] strArr, Bundle[] bundleArr) {
        Parcel m9326y = m9326y();
        m9326y.writeStringArray(strArr);
        m9326y.writeTypedArray(bundleArr, 0);
        m9328b(11, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final C3348nb mo7445b() {
        Parcel m9329a = m9329a(3, m9326y());
        C3348nb c3348nb = (C3348nb) dkk.m9323a(m9329a, C3348nb.CREATOR);
        m9329a.recycle();
        return c3348nb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final void mo7441b(String str, String str2, dya dyaVar, AbstractC2731a abstractC2731a, AbstractC3328mi abstractC3328mi, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9322a(m9326y, dyaVar);
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3328mi);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(20, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: b */
    public final boolean mo7444b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(15, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: c */
    public final eba mo7440c() {
        Parcel m9329a = m9329a(5, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3333mn
    /* renamed from: c */
    public final boolean mo7439c(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        Parcel m9329a = m9329a(17, m9326y);
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }
}
