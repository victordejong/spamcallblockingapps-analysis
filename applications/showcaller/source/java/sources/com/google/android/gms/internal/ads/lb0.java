package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lb0.class */
public final class lb0 extends C6612j2 implements nb0 {
    public lb0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.overlay.client.IAdOverlayCreator");
    }

    @Override // com.google.android.gms.internal.ads.nb0
    /* renamed from: E */
    public final IBinder mo12955E(AbstractC6253a abstractC6253a) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        m14188D0.recycle();
        return readStrongBinder;
    }
}
