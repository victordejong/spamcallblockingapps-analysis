package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ac.class */
public final class ac implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        ArrayList arrayList = null;
        zzbj zzbjVar = null;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                arrayList = SafeParcelReader.c(parcel, readInt, LocationRequest.CREATOR);
            } else if (c2 == 2) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 3) {
                z2 = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zzbjVar = (zzbj) SafeParcelReader.a(parcel, readInt, zzbj.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new LocationSettingsRequest(arrayList, z, z2, zzbjVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
