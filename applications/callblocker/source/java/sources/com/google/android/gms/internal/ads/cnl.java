package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cnl.class */
public final class cnl implements Parcelable.Creator<cnm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cnm createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i3 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 3:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new cnm(i3, i2, i, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ cnm[] newArray(int i) {
        return new cnm[i];
    }
}
