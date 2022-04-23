package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzv.class */
public final class zzv implements Parcelable.Creator<VisibleRegion> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        LatLng latLng3 = null;
        LatLng latLng4 = null;
        LatLngBounds latLngBounds = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 == 3) {
                latLng2 = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 == 4) {
                latLng3 = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 == 5) {
                latLng4 = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 != 6) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                latLngBounds = (LatLngBounds) SafeParcelReader.a(parcel, readInt, LatLngBounds.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new VisibleRegion(latLng, latLng2, latLng3, latLng4, latLngBounds);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ VisibleRegion[] newArray(int i) {
        return new VisibleRegion[i];
    }
}
