package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.kr */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kr.class */
public final class C3283kr extends dkj implements AbstractC3281kp {
    public C3283kr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final AbstractC2731a mo7534a() {
        Parcel m9329a = m9329a(2, m9326y());
        AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m13796a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7533a(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(21, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7532a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(3, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7531a(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3467rm abstractC3467rm, String str2) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3467rm);
        m9326y.writeString(str2);
        m9328b(10, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7530a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(7, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7529a(AbstractC2731a abstractC2731a, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku, C2835bl c2835bl, List<String> list) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9324a(m9326y, abstractC3286ku);
        dkk.m9322a(m9326y, c2835bl);
        m9326y.writeStringList(list);
        m9328b(14, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7528a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(1, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7527a(AbstractC2731a abstractC2731a, dyd dydVar, dya dyaVar, String str, String str2, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dydVar);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(6, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7526a(AbstractC2731a abstractC2731a, AbstractC3161gd abstractC3161gd, List<C3169gl> list) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3161gd);
        m9326y.writeTypedList(list);
        m9328b(31, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7525a(AbstractC2731a abstractC2731a, AbstractC3467rm abstractC3467rm, List<String> list) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9324a(m9326y, abstractC3467rm);
        m9326y.writeStringList(list);
        m9328b(23, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7523a(dya dyaVar, String str) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        m9328b(11, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7522a(dya dyaVar, String str, String str2) {
        Parcel m9326y = m9326y();
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        m9326y.writeString(str2);
        m9328b(20, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: a */
    public final void mo7520a(boolean z) {
        Parcel m9326y = m9326y();
        dkk.m9321a(m9326y, z);
        m9328b(25, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7519b() {
        m9328b(4, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7518b(AbstractC2731a abstractC2731a) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        m9328b(30, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: b */
    public final void mo7517b(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(28, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7516c() {
        m9328b(5, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: c */
    public final void mo7515c(AbstractC2731a abstractC2731a, dya dyaVar, String str, AbstractC3286ku abstractC3286ku) {
        Parcel m9326y = m9326y();
        dkk.m9324a(m9326y, abstractC2731a);
        dkk.m9322a(m9326y, dyaVar);
        m9326y.writeString(str);
        dkk.m9324a(m9326y, abstractC3286ku);
        m9328b(32, m9326y);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: d */
    public final void mo7514d() {
        m9328b(8, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: e */
    public final void mo7513e() {
        m9328b(9, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: f */
    public final void mo7512f() {
        m9328b(12, m9326y());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: g */
    public final boolean mo7511g() {
        Parcel m9329a = m9329a(13, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.kx] */
    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: h */
    public final AbstractC3289kx mo7510h() {
        C3293la c3293la;
        Parcel m9329a = m9329a(15, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c3293la = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            c3293la = queryLocalInterface instanceof AbstractC3289kx ? (AbstractC3289kx) queryLocalInterface : new C3293la(readStrongBinder);
        }
        m9329a.recycle();
        return c3293la;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.ld] */
    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: i */
    public final AbstractC3296ld mo7509i() {
        C3298lf c3298lf;
        Parcel m9329a = m9329a(16, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c3298lf = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            c3298lf = queryLocalInterface instanceof AbstractC3296ld ? (AbstractC3296ld) queryLocalInterface : new C3298lf(readStrongBinder);
        }
        m9329a.recycle();
        return c3298lf;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: j */
    public final Bundle mo7508j() {
        Parcel m9329a = m9329a(17, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: k */
    public final Bundle mo7507k() {
        Parcel m9329a = m9329a(18, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: l */
    public final Bundle mo7506l() {
        Parcel m9329a = m9329a(19, m9326y());
        Bundle bundle = (Bundle) dkk.m9323a(m9329a, Bundle.CREATOR);
        m9329a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: m */
    public final boolean mo7505m() {
        Parcel m9329a = m9329a(22, m9326y());
        boolean m9325a = dkk.m9325a(m9329a);
        m9329a.recycle();
        return m9325a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: n */
    public final AbstractC2893cr mo7504n() {
        Parcel m9329a = m9329a(24, m9326y());
        AbstractC2893cr m10652a = AbstractBinderC2900cu.m10652a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m10652a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: o */
    public final eba mo7503o() {
        Parcel m9329a = m9329a(26, m9326y());
        eba m8092a = eaz.m8092a(m9329a.readStrongBinder());
        m9329a.recycle();
        return m8092a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [com.google.android.gms.internal.ads.le] */
    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: p */
    public final AbstractC3297le mo7502p() {
        C3299lg c3299lg;
        Parcel m9329a = m9329a(27, m9326y());
        IBinder readStrongBinder = m9329a.readStrongBinder();
        if (readStrongBinder == null) {
            c3299lg = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            c3299lg = queryLocalInterface instanceof AbstractC3297le ? (AbstractC3297le) queryLocalInterface : new C3299lg(readStrongBinder);
        }
        m9329a.recycle();
        return c3299lg;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: q */
    public final C3348nb mo7501q() {
        Parcel m9329a = m9329a(33, m9326y());
        C3348nb c3348nb = (C3348nb) dkk.m9323a(m9329a, C3348nb.CREATOR);
        m9329a.recycle();
        return c3348nb;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC3281kp
    /* renamed from: r */
    public final C3348nb mo7500r() {
        Parcel m9329a = m9329a(34, m9326y());
        C3348nb c3348nb = (C3348nb) dkk.m9323a(m9329a, C3348nb.CREATOR);
        m9329a.recycle();
        return c3348nb;
    }
}
