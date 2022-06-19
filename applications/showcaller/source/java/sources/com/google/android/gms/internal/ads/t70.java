package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/t70.class */
public final class t70 extends C6612j2 implements v70 {
    public t70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: B5 */
    public final void mo9769B5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        C6686l2.m13741f(m14186c0, y70Var);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: D */
    public final zzbya mo9768D() {
        Parcel m14188D0 = m14188D0(33, m14186c0());
        zzbya zzbyaVar = (zzbya) C6686l2.m13744c(m14188D0, zzbya.CREATOR);
        m14188D0.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: H5 */
    public final void mo9765H5(zzbdg zzbdgVar, String str) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        m14187J0(11, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J */
    public final boolean mo9764J() {
        Parcel m14188D0 = m14188D0(22, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: J1 */
    public final void mo9763J1(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(37, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K */
    public final AbstractC6640ju mo9762K() {
        Parcel m14188D0 = m14188D0(26, m14186c0());
        AbstractC6640ju m14272E6 = AbstractBinderC6603iu.m14272E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m14272E6;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: K5 */
    public final void mo9761K5(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, y70Var);
        m14187J0(28, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: L2 */
    public final void mo9760L2(AbstractC6253a abstractC6253a, a40 a40Var, List<zzbrv> list) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, a40Var);
        m14186c0.writeTypedList(list);
        m14187J0(31, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: P */
    public final zzbya mo9759P() {
        Parcel m14188D0 = m14188D0(34, m14186c0());
        zzbya zzbyaVar = (zzbya) C6686l2.m13744c(m14188D0, zzbya.CREATOR);
        m14188D0.recycle();
        return zzbyaVar;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q */
    public final e80 mo9758Q() {
        e80 e80Var;
        Parcel m14188D0 = m14188D0(16, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            e80Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            e80Var = queryLocalInterface instanceof e80 ? (e80) queryLocalInterface : new e80(readStrongBinder);
        }
        m14188D0.recycle();
        return e80Var;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: Q1 */
    public final void mo9757Q1(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        C6686l2.m13741f(m14186c0, y70Var);
        m14187J0(35, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: R1 */
    public final void mo9756R1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, y70 y70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, y70Var);
        m14187J0(32, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: W */
    public final b80 mo9755W() {
        z70 z70Var;
        Parcel m14188D0 = m14188D0(36, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            z70Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
            z70Var = queryLocalInterface instanceof b80 ? (b80) queryLocalInterface : new z70(readStrongBinder);
        }
        m14188D0.recycle();
        return z70Var;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: X2 */
    public final void mo9753X2(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(30, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: a4 */
    public final void mo9751a4(AbstractC6253a abstractC6253a, yd0 yd0Var, List<String> list) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, yd0Var);
        m14186c0.writeStringList(list);
        m14187J0(23, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: c3 */
    public final void mo9750c3(boolean z) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13745b(m14186c0, z);
        m14187J0(25, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: d */
    public final AbstractC6253a mo9749d() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: f */
    public final void mo9748f() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: g0 */
    public final void mo9747g0(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(21, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: i */
    public final void mo9746i() {
        m14187J0(8, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: j */
    public final void mo9745j() {
        m14187J0(9, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k */
    public final boolean mo9744k() {
        Parcel m14188D0 = m14188D0(13, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: k6 */
    public final void mo9743k6(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, zzbdg zzbdgVar, String str, String str2, y70 y70Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        C6686l2.m13741f(m14186c0, y70Var);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: l */
    public final void mo9742l() {
        m14187J0(12, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: s1 */
    public final void mo9739s1(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, yd0 yd0Var, String str2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(null);
        C6686l2.m13741f(m14186c0, yd0Var);
        m14186c0.writeString(str2);
        m14187J0(10, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: t */
    public final h80 mo9737t() {
        f80 f80Var;
        Parcel m14188D0 = m14188D0(27, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            f80Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            f80Var = queryLocalInterface instanceof h80 ? (h80) queryLocalInterface : new f80(readStrongBinder);
        }
        m14188D0.recycle();
        return f80Var;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: v0 */
    public final d80 mo9736v0() {
        d80 d80Var;
        Parcel m14188D0 = m14188D0(15, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            d80Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            d80Var = queryLocalInterface instanceof d80 ? (d80) queryLocalInterface : new d80(readStrongBinder);
        }
        m14188D0.recycle();
        return d80Var;
    }

    @Override // com.google.android.gms.internal.ads.v70
    /* renamed from: x4 */
    public final void mo9735x4(AbstractC6253a abstractC6253a, zzbdg zzbdgVar, String str, String str2, y70 y70Var, zzblv zzblvVar, List<String> list) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        C6686l2.m13741f(m14186c0, y70Var);
        C6686l2.m13743d(m14186c0, zzblvVar);
        m14186c0.writeStringList(list);
        m14187J0(14, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.v70
    public final void zzi() {
        m14187J0(5, m14186c0());
    }
}
