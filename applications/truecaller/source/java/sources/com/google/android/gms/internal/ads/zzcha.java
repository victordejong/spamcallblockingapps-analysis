package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcha.class */
public final class zzcha implements Parcelable.Creator<zzcgz> {
    @Override // android.os.Parcelable.Creator
    public final zzcgz createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        String str = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 4) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 5) {
                z = SafeParcelReader.m38873p(parcel, readInt);
            } else if (c != 6) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m38873p(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcgz(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcgz[] newArray(int i) {
        return new zzcgz[i];
    }
}
