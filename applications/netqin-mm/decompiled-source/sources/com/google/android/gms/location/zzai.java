package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzai.class */
public final class zzai implements Parcelable.Creator<LocationSettingsStates> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            switch (SafeParcelReader.m17269a(a)) {
                case 1:
                    z = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 2:
                    z2 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 3:
                    z3 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 4:
                    z4 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 5:
                    z5 = SafeParcelReader.m17242t(parcel, a);
                    break;
                case 6:
                    z6 = SafeParcelReader.m17242t(parcel, a);
                    break;
                default:
                    SafeParcelReader.m17270F(parcel, a);
                    break;
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new LocationSettingsStates(z, z2, z3, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
