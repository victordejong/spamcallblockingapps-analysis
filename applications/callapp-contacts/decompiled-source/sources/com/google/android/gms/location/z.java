package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/z.class */
public final class z implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        List<Location> list = LocationResult.zza;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                list = SafeParcelReader.c(parcel, readInt, Location.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LocationResult(list);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
