package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ip.class */
public final class ip implements Parcelable.Creator<zzajm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajm createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 3) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzajm(str, z, i, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajm[] newArray(int i) {
        return new zzajm[i];
    }
}
