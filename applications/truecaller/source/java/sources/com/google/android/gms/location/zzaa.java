package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzaa.class */
public final class zzaa implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final LocationAvailability createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 1;
        int i2 = 1;
        int i3 = 1000;
        char c = 0;
        zzaj[] zzajVarArr = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 == 4) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zzajVarArr = (zzaj[]) SafeParcelReader.m38876m(parcel, readInt, zzaj.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LocationAvailability(i3, i, i2, c, zzajVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
