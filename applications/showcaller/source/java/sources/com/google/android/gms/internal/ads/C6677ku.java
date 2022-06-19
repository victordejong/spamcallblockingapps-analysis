package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ku */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ku.class */
public final class C6677ku extends C6612j2 implements AbstractC6751mu {
    public C6677ku(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6751mu
    /* renamed from: a */
    public final void mo11797a() {
        m14187J0(1, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6751mu
    /* renamed from: d */
    public final void mo11796d() {
        m14187J0(2, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6751mu
    /* renamed from: f */
    public final void mo11795f() {
        m14187J0(4, m14186c0());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6751mu
    /* renamed from: j4 */
    public final void mo11794j4(boolean z) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13745b(m14186c0, z);
        m14187J0(5, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6751mu
    public final void zzg() {
        m14187J0(3, m14186c0());
    }
}
