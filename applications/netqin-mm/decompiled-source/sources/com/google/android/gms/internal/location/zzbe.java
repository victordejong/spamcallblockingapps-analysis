package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzbe.class */
public final class zzbe implements Parcelable.Creator<zzbd> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbd createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        List<ClientIdentity> list = zzbd.f29366h;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 != 1) {
                switch (a2) {
                    case 5:
                        list = SafeParcelReader.m17259c(parcel, a, ClientIdentity.CREATOR);
                        continue;
                    case 6:
                        str = SafeParcelReader.m17246p(parcel, a);
                        continue;
                    case 7:
                        z = SafeParcelReader.m17242t(parcel, a);
                        continue;
                    case 8:
                        z2 = SafeParcelReader.m17242t(parcel, a);
                        continue;
                    case 9:
                        z3 = SafeParcelReader.m17242t(parcel, a);
                        continue;
                    case 10:
                        str2 = SafeParcelReader.m17246p(parcel, a);
                        continue;
                    default:
                        SafeParcelReader.m17270F(parcel, a);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.m17264a(parcel, a, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzbd(locationRequest, list, str, z, z2, z3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbd[] newArray(int i) {
        return new zzbd[i];
    }
}
