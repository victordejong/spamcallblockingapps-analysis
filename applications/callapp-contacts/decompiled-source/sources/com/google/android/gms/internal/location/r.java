package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/r.class */
public final class r implements Parcelable.Creator<zzba> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzba createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        List<ClientIdentity> list = zzba.zza;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        long j = Long.MAX_VALUE;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 != 1) {
                switch (c2) {
                    case 5:
                        list = SafeParcelReader.c(parcel, readInt, ClientIdentity.CREATOR);
                        continue;
                    case 6:
                        str = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case 7:
                        z = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case '\b':
                        z2 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case '\t':
                        z3 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case '\n':
                        str2 = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case 11:
                        z4 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case '\f':
                        z5 = SafeParcelReader.c(parcel, readInt);
                        continue;
                    case '\r':
                        str3 = SafeParcelReader.m(parcel, readInt);
                        continue;
                    case 14:
                        j = SafeParcelReader.f(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.b(parcel, readInt);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.a(parcel, readInt, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzba(locationRequest, list, str, z, z2, z3, str2, z4, z5, str3, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzba[] newArray(int i) {
        return new zzba[i];
    }
}
