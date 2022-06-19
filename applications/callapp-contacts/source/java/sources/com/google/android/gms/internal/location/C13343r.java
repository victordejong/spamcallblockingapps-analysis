package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.location.LocationRequest;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.internal.location.r */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/r.class */
public final class C13343r implements Parcelable.Creator<zzba> {
    /* JADX WARN: Type inference failed for: r0v43, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzba createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = zzba.zza;
        LocationRequest locationRequest = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        char c = 65535;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 != 1) {
                switch (c2) {
                    case 5:
                        arrayList = SafeParcelReader.m19138c(parcel, readInt, ClientIdentity.CREATOR);
                        continue;
                    case 6:
                        str = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case 7:
                        z = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case '\b':
                        z2 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case '\t':
                        z3 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case '\n':
                        str2 = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case 11:
                        z4 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case '\f':
                        z5 = SafeParcelReader.m19139c(parcel, readInt);
                        continue;
                    case '\r':
                        str3 = SafeParcelReader.m19128m(parcel, readInt);
                        continue;
                    case 14:
                        c = SafeParcelReader.m19135f(parcel, readInt);
                        continue;
                    default:
                        SafeParcelReader.m19142b(parcel, readInt);
                        continue;
                }
            } else {
                locationRequest = (LocationRequest) SafeParcelReader.m19143a(parcel, readInt, LocationRequest.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzba(locationRequest, arrayList, str, z, z2, z3, str2, z4, z5, str3, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzba[] newArray(int i) {
        return new zzba[i];
    }
}
