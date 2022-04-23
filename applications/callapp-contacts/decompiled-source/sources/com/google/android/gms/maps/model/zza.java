package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zza.class */
public final class zza implements Parcelable.Creator<CameraPosition> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        LatLng latLng = null;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                latLng = (LatLng) SafeParcelReader.a(parcel, readInt, LatLng.CREATOR);
            } else if (c2 == 3) {
                f = SafeParcelReader.i(parcel, readInt);
            } else if (c2 == 4) {
                f2 = SafeParcelReader.i(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                f3 = SafeParcelReader.i(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new CameraPosition(latLng, f, f2, f3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}
