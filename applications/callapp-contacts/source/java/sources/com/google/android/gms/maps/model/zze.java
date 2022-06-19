package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zze.class */
public final class zze implements Parcelable.Creator<LatLngBounds> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                latLng2 = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
