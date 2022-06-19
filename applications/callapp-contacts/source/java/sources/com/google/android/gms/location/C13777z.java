package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.location.z */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/z.class */
public final class C13777z implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        ArrayList arrayList = LocationResult.zza;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 1) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                arrayList = SafeParcelReader.m19138c(parcel, readInt, Location.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new LocationResult(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ LocationResult[] newArray(int i) {
        return new LocationResult[i];
    }
}
