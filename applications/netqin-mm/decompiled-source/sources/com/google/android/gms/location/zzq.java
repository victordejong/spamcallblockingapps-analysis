package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.internal.location.zzbh;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/zzq.class */
public final class zzq implements Parcelable.Creator<GeofencingRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GeofencingRequest createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        ArrayList arrayList = null;
        int i = 0;
        String str = "";
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                arrayList = SafeParcelReader.m17259c(parcel, a, zzbh.CREATOR);
            } else if (a2 == 2) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 != 3) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new GeofencingRequest(arrayList, i, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GeofencingRequest[] newArray(int i) {
        return new GeofencingRequest[i];
    }
}
