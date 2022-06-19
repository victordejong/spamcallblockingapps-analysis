package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzah.class */
public final class zzah implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final LocationSettingsResult createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                status = (Status) SafeParcelReader.m38880i(parcel, readInt, Status.CREATOR);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.m38880i(parcel, readInt, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
