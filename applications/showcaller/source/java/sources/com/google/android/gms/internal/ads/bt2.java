package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/bt2.class */
public final class bt2 implements Parcelable.Creator<zzfjz> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzfjz createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 3) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 4) {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                i3 = SafeParcelReader.m16981E(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzfjz(i, i2, i3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzfjz[] newArray(int i) {
        return new zzfjz[i];
    }
}
