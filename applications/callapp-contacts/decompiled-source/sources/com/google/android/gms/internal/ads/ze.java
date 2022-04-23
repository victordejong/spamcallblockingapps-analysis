package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ze.class */
public final class ze implements Parcelable.Creator<zzbar> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbar createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 4) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 5) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 != 6) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzbar(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbar[] newArray(int i) {
        return new zzbar[i];
    }
}
