package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dyg.class */
public final class dyg implements Parcelable.Creator<dyd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dyd createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        dyd[] dydVarArr = null;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        boolean z8 = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 5:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 6:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 7:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 8:
                    dydVarArr = (dyd[]) SafeParcelReader.m13962b(parcel, m13969a, dyd.CREATOR);
                    break;
                case 9:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 10:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 11:
                    z4 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 12:
                    z5 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 13:
                    z6 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 14:
                    z7 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 15:
                    z8 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new dyd(str, i, i2, z, i3, i4, dydVarArr, z2, z3, z4, z5, z6, z7, z8);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ dyd[] newArray(int i) {
        return new dyd[i];
    }
}
