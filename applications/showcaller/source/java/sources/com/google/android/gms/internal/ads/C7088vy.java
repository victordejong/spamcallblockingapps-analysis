package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.vy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vy.class */
public final class C7088vy implements Parcelable.Creator<zzblv> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzblv createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        zzbis zzbisVar = null;
        int i = 0;
        boolean z = false;
        int i2 = 0;
        boolean z2 = false;
        int i3 = 0;
        boolean z3 = false;
        int i4 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 3:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 5:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 6:
                    zzbisVar = (zzbis) SafeParcelReader.m16959o(parcel, m16983C, zzbis.CREATOR);
                    break;
                case 7:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 8:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzblv(i, z, i2, z2, i3, zzbisVar, z3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzblv[] newArray(int i) {
        return new zzblv[i];
    }
}
