package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzat.class */
public final class zzat implements Parcelable.Creator<zzaq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaq createFromParcel(Parcel parcel) {
        int b = SafeParcelReader.m17263b(parcel);
        String str = null;
        zzap zzapVar = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < b) {
            int a = SafeParcelReader.m17268a(parcel);
            int a2 = SafeParcelReader.m17269a(a);
            if (a2 == 2) {
                str = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 == 3) {
                zzapVar = (zzap) SafeParcelReader.m17264a(parcel, a, zzap.CREATOR);
            } else if (a2 == 4) {
                str2 = SafeParcelReader.m17246p(parcel, a);
            } else if (a2 != 5) {
                SafeParcelReader.m17270F(parcel, a);
            } else {
                j = SafeParcelReader.m17274B(parcel, a);
            }
        }
        SafeParcelReader.m17243s(parcel, b);
        return new zzaq(str, zzapVar, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaq[] newArray(int i) {
        return new zzaq[i];
    }
}
