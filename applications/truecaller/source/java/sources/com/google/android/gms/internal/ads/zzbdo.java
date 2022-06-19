package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdo.class */
public final class zzbdo implements Parcelable.Creator<zzbdn> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzbdn createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                c = SafeParcelReader.m38866w(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbdn(i, i2, str, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdn[] newArray(int i) {
        return new zzbdn[i];
    }
}
