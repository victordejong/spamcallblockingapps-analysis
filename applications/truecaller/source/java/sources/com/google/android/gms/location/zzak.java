package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzak.class */
public final class zzak implements Parcelable.Creator<zzaj> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzaj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        char c = 65535;
        char c2 = 65535;
        int i = 1;
        int i2 = 1;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c3 == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c3 == 3) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c2 = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzaj(i, i2, c, c2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaj[] newArray(int i) {
        return new zzaj[i];
    }
}
