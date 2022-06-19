package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.bt */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bt.class */
public final class C6341bt extends C6612j2 implements AbstractC6415dt {
    public C6341bt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: D5 */
    public final AbstractC7008ts mo15703D5(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, int i) {
        C6934rs c6934rs;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        m14186c0.writeString(str);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(10, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6934rs = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            c6934rs = queryLocalInterface instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface : new C6934rs(readStrongBinder);
        }
        m14188D0.recycle();
        return c6934rs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: M */
    public final kb0 mo15702M(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        Parcel m14188D0 = m14188D0(8, m14186c0);
        kb0 m14140E6 = jb0.m14140E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m14140E6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: R0 */
    public final AbstractC6682kz mo15700R0(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, abstractC6253a2);
        Parcel m14188D0 = m14188D0(5, m14186c0);
        AbstractC6682kz m14012E6 = AbstractBinderC6645jz.m14012E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m14012E6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: Z4 */
    public final AbstractC6713lt mo15699Z4(AbstractC6253a abstractC6253a, int i) {
        C6639jt c6639jt;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(9, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6639jt = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            c6639jt = queryLocalInterface instanceof AbstractC6713lt ? (AbstractC6713lt) queryLocalInterface : new C6639jt(readStrongBinder);
        }
        m14188D0.recycle();
        return c6639jt;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: e1 */
    public final yg0 mo15698e1(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(14, m14186c0);
        yg0 m9183E6 = xg0.m9183E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m9183E6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: h3 */
    public final fe0 mo15697h3(AbstractC6253a abstractC6253a, String str, s70 s70Var, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(12, m14186c0);
        fe0 m15517E6 = ee0.m15517E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m15517E6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: j2 */
    public final AbstractC7008ts mo15696j2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        C6934rs c6934rs;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(13, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6934rs = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            c6934rs = queryLocalInterface instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface : new C6934rs(readStrongBinder);
        }
        m14188D0.recycle();
        return c6934rs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: p4 */
    public final AbstractC6860ps mo15694p4(AbstractC6253a abstractC6253a, String str, s70 s70Var, int i) {
        C6786ns c6786ns;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(3, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6786ns = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            c6786ns = queryLocalInterface instanceof AbstractC6860ps ? (AbstractC6860ps) queryLocalInterface : new C6786ns(readStrongBinder);
        }
        m14188D0.recycle();
        return c6786ns;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: p6 */
    public final ab0 mo15693p6(AbstractC6253a abstractC6253a, s70 s70Var, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(15, m14186c0);
        ab0 m8474E6 = za0.m8474E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m8474E6;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: u4 */
    public final AbstractC7008ts mo15691u4(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        C6934rs c6934rs;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6934rs = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            c6934rs = queryLocalInterface instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface : new C6934rs(readStrongBinder);
        }
        m14188D0.recycle();
        return c6934rs;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6415dt
    /* renamed from: w2 */
    public final AbstractC7008ts mo15690w2(AbstractC6253a abstractC6253a, zzbdl zzbdlVar, String str, s70 s70Var, int i) {
        C6934rs c6934rs;
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13743d(m14186c0, zzbdlVar);
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, s70Var);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6934rs = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            c6934rs = queryLocalInterface instanceof AbstractC7008ts ? (AbstractC7008ts) queryLocalInterface : new C6934rs(readStrongBinder);
        }
        m14188D0.recycle();
        return c6934rs;
    }
}
