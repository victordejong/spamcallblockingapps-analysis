package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.iz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/iz.class */
public final class C6608iz extends C6612j2 implements AbstractC6682kz {
    public C6608iz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: A6 */
    public final void mo12934A6(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: J5 */
    public final void mo12932J5(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(9, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: M */
    public final void mo12931M(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(6, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: Y */
    public final void mo12930Y(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(3, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: d4 */
    public final void mo12928d4(AbstractC6421dz abstractC6421dz) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6421dz);
        m14187J0(8, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: o2 */
    public final void mo12926o2(String str, AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: u0 */
    public final void mo12924u0(AbstractC6253a abstractC6253a, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14186c0.writeInt(i);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6682kz
    /* renamed from: y */
    public final AbstractC6253a mo12923y(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        Parcel m14188D0 = m14188D0(2, m14186c0);
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }
}
