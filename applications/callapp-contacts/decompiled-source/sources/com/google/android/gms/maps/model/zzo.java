package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzo.class */
public final class zzo implements Parcelable.Creator<StreetViewPanoramaLocation> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaLocation createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        StreetViewPanoramaLink[] streetViewPanoramaLinkArr = null;
        LatLng latLng = null;
        String str = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                streetViewPanoramaLinkArr = (StreetViewPanoramaLink[]) SafeParcelReader.b(parcel, readInt, StreetViewPanoramaLink.CREATOR);
            } else if (c2 == 3) {
                latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new StreetViewPanoramaLocation(streetViewPanoramaLinkArr, latLng, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaLocation[] newArray(int i) {
        return new StreetViewPanoramaLocation[i];
    }
}
