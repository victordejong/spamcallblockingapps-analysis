package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ecq.class */
public final class ecq implements Parcelable.Creator<ecn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ecn createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 2:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 3:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 4:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new ecn(z3, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ecn[] newArray(int i) {
        return new ecn[i];
    }
}
