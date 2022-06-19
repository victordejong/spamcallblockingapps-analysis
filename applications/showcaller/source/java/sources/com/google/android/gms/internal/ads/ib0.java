package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ib0.class */
public final class ib0 extends C6612j2 implements kb0 {
    public ib0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: S */
    public final void mo13941S(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        m14187J0(13, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: V1 */
    public final void mo13940V1(int i, int i2, Intent intent) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14186c0.writeInt(i2);
        C6686l2.m13743d(m14186c0, intent);
        m14187J0(12, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a */
    public final void mo13939a() {
        m14187J0(10, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: a0 */
    public final void mo13938a0(Bundle bundle) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, bundle);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: d */
    public final void mo13937d() {
        m14187J0(14, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: g */
    public final void mo13936g() {
        m14187J0(3, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: h */
    public final void mo13935h() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: i */
    public final void mo13934i() {
        m14187J0(5, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: k */
    public final void mo13933k() {
        m14187J0(8, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: l */
    public final void mo13932l() {
        m14187J0(7, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: m0 */
    public final void mo13931m0(Bundle bundle) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, bundle);
        Parcel m14188D0 = m14188D0(6, m14186c0);
        if (m14188D0.readInt() != 0) {
            bundle.readFromParcel(m14188D0);
        }
        m14188D0.recycle();
    }

    @Override // com.google.android.gms.internal.ads.kb0
    /* renamed from: o */
    public final void mo13930o() {
        m14187J0(9, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final boolean zzg() {
        Parcel m14188D0 = m14188D0(11, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }

    @Override // com.google.android.gms.internal.ads.kb0
    public final void zzi() {
        m14187J0(2, m14186c0());
    }
}
