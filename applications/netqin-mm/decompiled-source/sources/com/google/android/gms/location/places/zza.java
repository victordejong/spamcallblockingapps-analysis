package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/location/places/zza.class */
public final class zza implements Parcelable.Creator<PlaceReport> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaceReport createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        int i = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 1) {
                i = SafeParcelReader.m17275A(parcel, a);
            } else if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                str2 = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 4) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                str3 = SafeParcelReader.m17246p(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new PlaceReport(i, str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ PlaceReport[] newArray(int i) {
        return new PlaceReport[i];
    }
}
