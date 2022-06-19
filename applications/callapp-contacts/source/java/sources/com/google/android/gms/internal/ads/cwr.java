package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwr.class */
public final class cwr implements Parcelable.Creator<zzdwr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwr createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 4) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdwr(i, i2, i3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwr[] newArray(int i) {
        return new zzdwr[i];
    }
}
