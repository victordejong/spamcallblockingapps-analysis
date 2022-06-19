package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/sd0.class */
public final class sd0 extends C6612j2 implements ud0 {
    public sd0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: T */
    public final void mo10350T(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(7, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: U3 */
    public final void mo10349U3(nd0 nd0Var) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, nd0Var);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: a */
    public final void mo10348a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: d */
    public final void mo10347d() {
        m14187J0(2, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: f */
    public final void mo10346f() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: g */
    public final void mo10345g() {
        m14187J0(6, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ud0
    /* renamed from: i */
    public final void mo10344i() {
        m14187J0(8, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.ud0
    public final void zzg() {
        m14187J0(3, m14186c0());
    }
}
