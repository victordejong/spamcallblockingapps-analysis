package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.ys */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ys.class */
public final class C7193ys extends C6612j2 implements AbstractC6304at {
    public C7193ys(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6304at
    /* renamed from: R5 */
    public final void mo8701R5(String str, String str2) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14186c0.writeString(str2);
        m14187J0(1, m14186c0);
    }
}
