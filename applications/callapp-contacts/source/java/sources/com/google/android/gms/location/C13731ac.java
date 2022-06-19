package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.ac */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ac.class */
public final class C13731ac implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        ArrayList arrayList = null;
        zzbj zzbjVar = null;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, LocationRequest.CREATOR);
            } else if (c == 2) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 3) {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zzbjVar = (zzbj) SafeParcelReader.m19143a(parcel, readInt, zzbj.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationSettingsRequest(arrayList, z, z2, zzbjVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
