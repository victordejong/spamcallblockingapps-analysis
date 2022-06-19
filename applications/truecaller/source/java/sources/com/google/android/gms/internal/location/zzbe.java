package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzbe.class */
public final class zzbe implements Parcelable.Creator<zzbd> {
    @Override // android.os.Parcelable.Creator
    public final zzbd createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = zzbd.zzcd;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c != 1) {
                switch (c) {
                    case 5:
                        arrayList = SafeParcelReader.m38875n(parcel, readInt, ClientIdentity.CREATOR);
                        continue;
                    case 6:
                        str = SafeParcelReader.m38879j(parcel, readInt);
                        continue;
                    case 7:
                        z = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case '\b':
                        z2 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case '\t':
                        z3 = SafeParcelReader.m38873p(parcel, readInt);
                        continue;
                    case '\n':
                        str2 = SafeParcelReader.m38879j(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.m38863z(parcel, readInt);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.m38880i(parcel, readInt, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbd(locationRequest, arrayList, str, z, z2, z3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbd[] newArray(int i) {
        return new zzbd[i];
    }
}
