package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzo.class */
public final class zzo implements Parcelable.Creator<zzp> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzp createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 4) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 5) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i4 = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzp(i, i2, i3, c, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp[] newArray(int i) {
        return new zzp[i];
    }
}
