package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.x */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/x.class */
public final class C13775x implements Parcelable.Creator<LocationAvailability> {
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        char c = 0;
        zzbo[] zzboVarArr = null;
        int i = 1000;
        int i2 = 1;
        int i3 = 1;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 2) {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 3) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 == 4) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzboVarArr = (zzbo[]) SafeParcelReader.m19140b(parcel, readInt, zzbo.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationAvailability(i, i2, i3, c, zzboVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationAvailability[] newArray(int i) {
        return new LocationAvailability[i];
    }
}
