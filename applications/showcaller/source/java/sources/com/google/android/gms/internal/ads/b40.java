package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/b40.class */
public final class b40 extends C6612j2 implements d40 {
    public b40(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.initialization.IInitializationCallback");
    }

    @Override // com.google.android.gms.internal.ads.d40
    /* renamed from: U4 */
    public final void mo9865U4(List<zzbrl> list) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeTypedList(list);
        m14187J0(1, m14186c0);
    }
}
