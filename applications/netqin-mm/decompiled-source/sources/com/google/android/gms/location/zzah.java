package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzah.class */
public final class zzah implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                status = (Status) SafeParcelReader.m17264a(parcel, a, Status.CREATOR);
            } else if (a2 != 2) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.m17264a(parcel, a, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
