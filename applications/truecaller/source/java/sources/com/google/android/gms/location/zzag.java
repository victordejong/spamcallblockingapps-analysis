package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzag.class */
public final class zzag implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final LocationSettingsRequest createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = false;
        ArrayList arrayList = null;
        zzae zzaeVar = null;
        boolean z2 = false;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m38875n(parcel, readInt, LocationRequest.CREATOR);
            } else if (c == 2) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c == 3) {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zzaeVar = (zzae) SafeParcelReader.m38880i(parcel, readInt, zzae.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new LocationSettingsRequest(arrayList, z, z2, zzaeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
