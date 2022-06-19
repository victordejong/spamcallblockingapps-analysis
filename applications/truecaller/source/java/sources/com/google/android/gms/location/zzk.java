package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/location/zzk.class */
public final class zzk implements Parcelable.Creator<zzj> {
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v28, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzj createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        boolean z = true;
        char c = '2';
        float f = 0.0f;
        char c2 = 65535;
        int i = Integer.MAX_VALUE;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c3 = (char) readInt;
            if (c3 == 1) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c3 == 2) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 == 3) {
                f = SafeParcelReader.m38870s(parcel, readInt);
            } else if (c3 == 4) {
                c2 = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c3 != 5) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzj(z, c, f, c2, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i) {
        return new zzj[i];
    }
}
