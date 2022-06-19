package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ks */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ks.class */
public final class C6675ks extends C6612j2 implements AbstractC6749ms {
    public C6675ks(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    /* renamed from: R4 */
    public final void mo13093R4(zzbdg zzbdgVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbdgVar);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6749ms
    public final boolean zzg() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        boolean m13746a = C6686l2.m13746a(m14188D0);
        m14188D0.recycle();
        return m13746a;
    }
}
