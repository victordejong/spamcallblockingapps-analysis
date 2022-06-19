package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/e80.class */
public final class e80 extends C6612j2 implements IInterface {
    public e80(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    /* renamed from: A4 */
    public final AbstractC6640ju m15553A4() {
        Parcel m14188D0 = m14188D0(16, m14186c0());
        AbstractC6640ju m14272E6 = AbstractBinderC6603iu.m14272E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m14272E6;
    }

    /* renamed from: V4 */
    public final AbstractC7199yy m15552V4() {
        Parcel m14188D0 = m14188D0(19, m14186c0());
        AbstractC7199yy m9022E6 = AbstractBinderC7162xy.m9022E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m9022E6;
    }

    /* renamed from: a */
    public final String m15551a() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    /* renamed from: a3 */
    public final void m15550a3(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(10, m14186c0);
    }

    /* renamed from: a6 */
    public final void m15549a6(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, abstractC6253a2);
        C6686l2.m13741f(m14186c0, abstractC6253a3);
        m14187J0(22, m14186c0);
    }

    /* renamed from: d */
    public final List m15548d() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        ArrayList m13740g = C6686l2.m13740g(m14188D0);
        m14188D0.recycle();
        return m13740g;
    }

    /* renamed from: f */
    public final AbstractC6533gz m15547f() {
        Parcel m14188D0 = m14188D0(5, m14186c0());
        AbstractC6533gz m15025E6 = AbstractBinderC6496fz.m15025E6(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m15025E6;
    }

    /* renamed from: g */
    public final String m15546g() {
        Parcel m14188D0 = m14188D0(7, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    /* renamed from: h */
    public final void m15545h() {
        m14187J0(8, m14186c0());
    }

    /* renamed from: i6 */
    public final void m15544i6(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(9, m14186c0);
    }

    /* renamed from: m */
    public final boolean m15543m() {
        Parcel m14188D0 = m14188D0(11, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    /* renamed from: n */
    public final boolean m15542n() {
        Parcel m14188D0 = m14188D0(12, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    /* renamed from: s */
    public final AbstractC6253a m15541s() {
        Parcel m14188D0 = m14188D0(15, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    /* renamed from: w */
    public final AbstractC6253a m15540w() {
        Parcel m14188D0 = m14188D0(21, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }

    /* renamed from: x2 */
    public final void m15539x2(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(14, m14186c0);
    }

    /* renamed from: y4 */
    public final Bundle m15538y4() {
        Parcel m14188D0 = m14188D0(13, m14186c0());
        Bundle bundle = (Bundle) C6686l2.m13744c(m14188D0, Bundle.CREATOR);
        m14188D0.recycle();
        return bundle;
    }

    public final String zzg() {
        Parcel m14188D0 = m14188D0(4, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    public final String zzi() {
        Parcel m14188D0 = m14188D0(6, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    public final AbstractC6253a zzu() {
        Parcel m14188D0 = m14188D0(20, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }
}
