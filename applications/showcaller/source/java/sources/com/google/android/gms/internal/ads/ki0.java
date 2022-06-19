package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ki0.class */
public final class ki0 implements Parcelable.Creator<zzcgz> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcgz createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 2) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 3) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 4) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 5) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v != 6) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcgz(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcgz[] newArray(int i) {
        return new zzcgz[i];
    }
}
