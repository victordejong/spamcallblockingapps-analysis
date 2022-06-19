package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.ae */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ae.class */
public final class C13733ae implements Parcelable.Creator<LocationSettingsStates> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    z = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 2:
                    z2 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 3:
                    z3 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 4:
                    z4 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 5:
                    z5 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                case 6:
                    z6 = SafeParcelReader.m19139c(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m19142b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationSettingsStates(z, z2, z3, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationSettingsStates[] newArray(int i) {
        return new LocationSettingsStates[i];
    }
}
