package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.ad */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ad.class */
public final class C13732ad implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                status = (Status) SafeParcelReader.m19143a(parcel, readInt, Status.CREATOR);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                locationSettingsStates = (LocationSettingsStates) SafeParcelReader.m19143a(parcel, readInt, LocationSettingsStates.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsResult[] newArray(int i) {
        return new LocationSettingsResult[i];
    }
}
