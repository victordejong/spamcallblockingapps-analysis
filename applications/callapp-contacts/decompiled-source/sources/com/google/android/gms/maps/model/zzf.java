package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/zzf.class */
public final class zzf implements Parcelable.Creator<LatLng> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLng createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                d2 = SafeParcelReader.k(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                d3 = SafeParcelReader.k(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LatLng(d2, d3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LatLng[] newArray(int i) {
        return new LatLng[i];
    }
}
