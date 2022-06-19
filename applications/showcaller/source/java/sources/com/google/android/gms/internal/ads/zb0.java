package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zb0.class */
public final class zb0 extends C6612j2 implements bc0 {
    public zb0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.query.IUpdateUrlsCallback");
    }

    @Override // com.google.android.gms.internal.ads.bc0
    /* renamed from: C5 */
    public final void mo8467C5(List<Uri> list) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeTypedList(list);
        m14187J0(1, m14186c0);
    }

    @Override // com.google.android.gms.internal.ads.bc0
    /* renamed from: p */
    public final void mo8466p(String str) {
        Parcel m14186c0 = m14186c0();
        m14186c0.writeString(str);
        m14187J0(2, m14186c0);
    }
}
