package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwj.class */
public final class cwj implements Parcelable.Creator<zzdwh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwh createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdwh(i, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwh[] newArray(int i) {
        return new zzdwh[i];
    }
}
