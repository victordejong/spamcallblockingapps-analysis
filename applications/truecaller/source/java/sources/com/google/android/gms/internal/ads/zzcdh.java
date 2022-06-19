package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdh.class */
public final class zzcdh implements Parcelable.Creator<zzcdg> {
    @Override // android.os.Parcelable.Creator
    public final zzcdg createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcdg(str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcdg[] newArray(int i) {
        return new zzcdg[i];
    }
}
