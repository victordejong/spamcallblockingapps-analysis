package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ja.class */
public final class ja implements Parcelable.Creator<zzajy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajy createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                i3 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 1000) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzajy(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajy[] newArray(int i) {
        return new zzajy[i];
    }
}
