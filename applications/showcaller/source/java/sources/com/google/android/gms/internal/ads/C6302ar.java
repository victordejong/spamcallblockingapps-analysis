package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ar */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ar.class */
public final class C6302ar implements Parcelable.Creator<zzbdp> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdp createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        zzbcz zzbczVar = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                c = SafeParcelReader.m16980F(parcel, m16983C);
            } else if (m16952v == 3) {
                zzbczVar = (zzbcz) SafeParcelReader.m16959o(parcel, m16983C, zzbcz.CREATOR);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                bundle = SafeParcelReader.m16968f(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbdp(str, c, zzbczVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdp[] newArray(int i) {
        return new zzbdp[i];
    }
}
