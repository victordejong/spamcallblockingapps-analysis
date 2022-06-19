package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/w70.class */
public final class w70 extends C6612j2 implements y70 {
    public w70(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: Z */
    public final void mo8920Z(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(3, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: a */
    public final void mo8919a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: b5 */
    public final void mo8918b5(AbstractC7237zz abstractC7237zz, String str) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC7237zz);
        m14186c0.writeString(str);
        m14187J0(10, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: d */
    public final void mo8917d() {
        m14187J0(2, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: f */
    public final void mo8916f() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: f1 */
    public final void mo8915f1(ce0 ce0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, ce0Var);
        m14187J0(16, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: g */
    public final void mo8914g() {
        m14187J0(6, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: h */
    public final void mo8913h() {
        m14187J0(8, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: i5 */
    public final void mo8912i5(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(23, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: k */
    public final void mo8911k() {
        m14187J0(15, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: m */
    public final void mo8910m() {
        m14187J0(11, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: m4 */
    public final void mo8909m4(zzccl zzcclVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: n */
    public final void mo8908n() {
        m14187J0(13, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: o0 */
    public final void mo8907o0(int i) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: q0 */
    public final void mo8906q0(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14187J0(21, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: r4 */
    public final void mo8905r4(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(24, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: u6 */
    public final void mo8904u6(int i, String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14186c0.writeString(str);
        m14187J0(22, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    /* renamed from: z5 */
    public final void mo8903z5(String str, String str2) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        m14187J0(9, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.y70
    public final void zzi() {
        m14187J0(5, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    public final void zzt() {
        m14187J0(18, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.y70
    public final void zzu() {
        m14187J0(20, m14186c0());
    }
}
