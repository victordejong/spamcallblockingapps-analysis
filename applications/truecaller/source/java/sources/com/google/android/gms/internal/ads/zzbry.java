package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbry.class */
public final class zzbry implements Parcelable.Creator<zzbrx> {
    @Override // android.os.Parcelable.Creator
    public final zzbrx createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        String str = null;
        int i3 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                i = SafeParcelReader.m38867v(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbrx(i, i3, str, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbrx[] newArray(int i) {
        return new zzbrx[i];
    }
}
