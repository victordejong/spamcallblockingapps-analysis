package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zze.class */
public final class zze implements Parcelable.Creator<LatLngBounds> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        LatLng latLng = null;
        LatLng latLng2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                latLng2 = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LatLngBounds(latLng, latLng2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLngBounds[] newArray(int i) {
        return new LatLngBounds[i];
    }
}
