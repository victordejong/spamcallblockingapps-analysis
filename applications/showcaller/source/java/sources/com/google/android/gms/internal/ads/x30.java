package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/x30.class */
public final class x30 implements Parcelable.Creator<zzbrl> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrl createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 3) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzbrl(str, z, i, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrl[] newArray(int i) {
        return new zzbrl[i];
    }
}
