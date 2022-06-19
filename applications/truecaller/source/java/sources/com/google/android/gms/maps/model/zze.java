package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zze.class */
public final class zze implements Parcelable.Creator<LatLngBounds> {
    @Override // android.os.Parcelable.Creator
    public final LatLngBounds createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                latLng2 = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
