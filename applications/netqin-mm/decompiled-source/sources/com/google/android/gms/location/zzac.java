package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzac.class */
public final class zzac implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        List<Location> list = LocationResult.f29735b;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            if (SafeParcelReader.m17269a(a) != 1) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                list = SafeParcelReader.m17259c(parcel, a, Location.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationResult(list);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
