package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ft */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ft.class */
public final class C6490ft extends C6612j2 implements AbstractC6602it {
    public C6490ft(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6602it
    /* renamed from: S2 */
    public final void mo8218S2(zzbcz zzbczVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbczVar);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6602it
    /* renamed from: a */
    public final void mo8217a() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6602it
    /* renamed from: c */
    public final void mo8216c() {
        m14187J0(2, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6602it
    /* renamed from: d */
    public final void mo8215d() {
        m14187J0(5, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6602it
    /* renamed from: e */
    public final void mo8214e() {
        m14187J0(3, m14186c0());
    }
}
