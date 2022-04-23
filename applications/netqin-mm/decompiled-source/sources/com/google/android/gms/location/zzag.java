package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzag.class */
public final class zzag implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        ArrayList arrayList = null;
        zzae zzaeVar = null;
        boolean z2 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                arrayList = SafeParcelReader.m17259c(parcel, a, LocationRequest.CREATOR);
            } else if (a2 == 2) {
                z = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 == 3) {
                z2 = SafeParcelReader.m17242t(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                zzaeVar = (zzae) SafeParcelReader.m17264a(parcel, a, zzae.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationSettingsRequest(arrayList, z, z2, zzaeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest[] newArray(int i) {
        return new LocationSettingsRequest[i];
    }
}
