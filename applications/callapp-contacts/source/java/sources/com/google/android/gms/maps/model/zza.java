package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zza.class */
public final class zza implements Parcelable.Creator<CameraPosition> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        float f = 0.0f;
        LatLng latLng = null;
        float f2 = 0.0f;
        float f3 = 0.0f;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                latLng = (LatLng) SafeParcelReader.m19143a(parcel, readInt, LatLng.CREATOR);
            } else if (c == 3) {
                f = SafeParcelReader.m19132i(parcel, readInt);
            } else if (c == 4) {
                f2 = SafeParcelReader.m19132i(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                f3 = SafeParcelReader.m19132i(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new CameraPosition(latLng, f, f2, f3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CameraPosition[] newArray(int i) {
        return new CameraPosition[i];
    }
}
