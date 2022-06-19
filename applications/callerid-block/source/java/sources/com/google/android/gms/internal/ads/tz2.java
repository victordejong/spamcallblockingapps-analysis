package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/tz2.class */
public final class tz2 implements Parcelable.Creator<zzyx> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyx createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        zzyx[] zzyxVarArr = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        boolean z9 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            switch (SafeParcelReader.m8318k(m8312q)) {
                case 2:
                    str = SafeParcelReader.m8323f(parcel, m8312q);
                    break;
                case 3:
                    i = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 4:
                    i2 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 5:
                    z = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 6:
                    i3 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 7:
                    i4 = SafeParcelReader.m8310s(parcel, m8312q);
                    break;
                case 8:
                    zzyxVarArr = (zzyx[]) SafeParcelReader.m8320i(parcel, m8312q, zzyx.CREATOR);
                    break;
                case 9:
                    z2 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 10:
                    z3 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 11:
                    z4 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 12:
                    z5 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 13:
                    z6 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 14:
                    z7 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 15:
                    z8 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                case 16:
                    z9 = SafeParcelReader.m8317l(parcel, m8312q);
                    break;
                default:
                    SafeParcelReader.m8306w(parcel, m8312q);
                    break;
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzyx(str, i, i2, z, i3, i4, zzyxVarArr, z2, z3, z4, z5, z6, z7, z8, z9);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzyx[] newArray(int i) {
        return new zzyx[i];
    }
}
