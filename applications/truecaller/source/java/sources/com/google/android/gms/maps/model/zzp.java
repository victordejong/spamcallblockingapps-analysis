package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/maps/model/zzp.class */
public final class zzp implements Parcelable.Creator<StreetViewPanoramaOrientation> {
    @Override // android.os.Parcelable.Creator
    public final StreetViewPanoramaOrientation createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        float f = 0.0f;
        float f2 = 0.0f;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                f = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                f2 = SafeParcelReader.m38870s(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new StreetViewPanoramaOrientation(f, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ StreetViewPanoramaOrientation[] newArray(int i) {
        return new StreetViewPanoramaOrientation[i];
    }
}
