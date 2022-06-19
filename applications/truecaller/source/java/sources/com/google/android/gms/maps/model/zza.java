package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zza.class */
public final class zza implements Parcelable.Creator<CameraPosition> {
    @Override // android.os.Parcelable.Creator
    public final CameraPosition createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        LatLng latLng = null;
        float f3 = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m38880i(parcel, readInt, LatLng.CREATOR);
            } else if (c == 3) {
                f = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c == 4) {
                f3 = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f2 = SafeParcelReader.m38870s(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new CameraPosition(latLng, f, f3, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}
