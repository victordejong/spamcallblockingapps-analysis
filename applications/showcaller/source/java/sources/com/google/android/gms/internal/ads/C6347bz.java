package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* renamed from: com.google.android.gms.internal.ads.bz */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bz.class */
public final class C6347bz extends C6612j2 implements AbstractC6421dz {
    public C6347bz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6421dz
    public final AbstractC6253a zzg() {
        Parcel m14188D0 = m14188D0(4, m14186c0());
        AbstractC6253a m16746D0 = AbstractC6253a.AbstractBinderC6254a.m16746D0(m14188D0.readStrongBinder());
        m14188D0.recycle();
        return m16746D0;
    }
}
