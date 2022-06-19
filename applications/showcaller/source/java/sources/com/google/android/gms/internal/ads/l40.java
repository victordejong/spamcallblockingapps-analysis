package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/l40.class */
public final class l40 extends C6612j2 implements n40 {
    public l40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.n40
    /* renamed from: A */
    public final void mo11882A(int i) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeInt(i);
        m14187J0(2, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.n40
    /* renamed from: a */
    public final void mo11881a() {
        m14187J0(1, m14186c0());
    }
}
