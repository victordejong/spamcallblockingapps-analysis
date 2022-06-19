package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.du */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/du.class */
public final class C6416du extends C6612j2 implements AbstractC6491fu {
    public C6416du(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IResponseInfo");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    /* renamed from: a */
    public final String mo12041a() {
        Parcel m14188D0 = m14188D0(1, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    /* renamed from: d */
    public final String mo12040d() {
        Parcel m14188D0 = m14188D0(2, m14186c0());
        String readString = m14188D0.readString();
        m14188D0.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6491fu
    public final List<zzbdp> zzg() {
        Parcel m14188D0 = m14188D0(3, m14186c0());
        ArrayList createTypedArrayList = m14188D0.createTypedArrayList(zzbdp.CREATOR);
        m14188D0.recycle();
        return createTypedArrayList;
    }
}
