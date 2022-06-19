package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.lz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/lz.class */
public final class C6719lz extends C6612j2 implements AbstractC6793nz {
    public C6719lz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6793nz
    /* renamed from: E5 */
    public final IBinder mo12778E5(AbstractC6253a abstractC6253a, AbstractC6253a abstractC6253a2, AbstractC6253a abstractC6253a3, int i) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13741f(m14186c0, abstractC6253a);
        C6686l2.m13741f(m14186c0, abstractC6253a2);
        C6686l2.m13741f(m14186c0, abstractC6253a3);
        m14186c0.writeInt(213806000);
        Parcel m14188D0 = m14188D0(1, m14186c0);
        IBinder readStrongBinder = m14188D0.readStrongBinder();
        m14188D0.recycle();
        return readStrongBinder;
    }
}
