package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ad.class */
public final class ad implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                status = (Status) SafeParcelReader.a(parcel, readInt, Status.CREATOR);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.a(parcel, readInt, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
