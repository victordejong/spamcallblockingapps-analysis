package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/x.class */
public final class x implements Parcelable.Creator<LocationAvailability> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        long j = 0;
        zzbo[] zzboVarArr = null;
        int i = 1000;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i3 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 == 4) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzboVarArr = (zzbo[]) SafeParcelReader.b(parcel, readInt, zzbo.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LocationAvailability(i, i2, i3, j, zzboVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
