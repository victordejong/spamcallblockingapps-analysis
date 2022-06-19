package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzbc;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/tc0.class */
public final class tc0 extends C6612j2 implements vc0 {
    public tc0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.vc0
    /* renamed from: C6 */
    public final void mo10045C6(zzbc zzbcVar) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, zzbcVar);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.vc0
    /* renamed from: s4 */
    public final void mo10044s4(ParcelFileDescriptor parcelFileDescriptor) {
        Parcel m14186c0 = m14186c0();
        C6686l2.m13743d(m14186c0, parcelFileDescriptor);
        m14187J0(1, m14186c0);
    }
}
