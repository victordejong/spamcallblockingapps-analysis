package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ciz.class */
public final class ciz implements Parcelable.Creator<ciu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ciu createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i6 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i5 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    i4 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 5:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 6:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 7:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new ciu(i6, i5, i4, i3, str, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ciu[] newArray(int i) {
        return new ciu[i];
    }
}
