package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwr.class */
public final class cwr implements Parcelable.Creator<zzdwr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwr createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 4) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdwr(i, i2, i3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwr[] newArray(int i) {
        return new zzdwr[i];
    }
}
