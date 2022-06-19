package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzv.class */
public final class zzv implements Parcelable.Creator<VisibleRegion> {
    @Override // android.os.Parcelable.Creator
    public final VisibleRegion createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c == 3) {
                latLng2 = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c == 4) {
                latLng3 = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c == 5) {
                latLng4 = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                latLngBounds = (LatLngBounds) SafeParcelReader.m38880i(parcel, readInt, LatLngBounds.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new VisibleRegion(latLng, latLng2, latLng3, latLng4, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}
