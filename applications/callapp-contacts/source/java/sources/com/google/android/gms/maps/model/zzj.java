package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzj.class */
public final class zzj implements Parcelable.Creator<PointOfInterest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PointOfInterest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        LatLng latLng = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new PointOfInterest(latLng, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PointOfInterest[] newArray(int i) {
        return new PointOfInterest[i];
    }
}
