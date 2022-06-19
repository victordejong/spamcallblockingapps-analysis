package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pl2.class */
public final class pl2 implements Parcelable.Creator<zzfcj> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzfcj createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    i2 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 3:
                    i3 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 4:
                    i4 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 5:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 6:
                    i5 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 7:
                    i6 = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzfcj(i, i2, i3, i4, str, i5, i6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzfcj[] newArray(int i) {
        return new zzfcj[i];
    }
}
