package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzv.class */
public final class zzv implements Parcelable.Creator<zzw> {
    @Override // android.os.Parcelable.Creator
    public final zzw createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        float f = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 4) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 5) {
                i4 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f = SafeParcelReader.m38870s(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzw(i, i2, i3, i4, f);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw[] newArray(int i) {
        return new zzw[i];
    }
}
