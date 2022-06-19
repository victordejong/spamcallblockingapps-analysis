package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.hu */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hu.class */
public final class C6565hu extends C6612j2 implements AbstractC6640ju {
    public C6565hu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g */
    public final float mo11351g() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: g3 */
    public final void mo11350g3(AbstractC6751mu abstractC6751mu) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6751mu);
        m14187J0(8, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: h */
    public final float mo11349h() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: j */
    public final float mo11348j() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6640ju
    /* renamed from: n */
    public final AbstractC6751mu mo11344n() {
        C6677ku c6677ku;
        Parcel m14188D0 = m14188D0(11, m14186c0());
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        if (readStrongBinder == null) {
            c6677ku = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            c6677ku = queryLocalInterface instanceof AbstractC6751mu ? (AbstractC6751mu) queryLocalInterface : new C6677ku(readStrongBinder);
        }
        m14188D0.recycle();
        return c6677ku;
    }
}
