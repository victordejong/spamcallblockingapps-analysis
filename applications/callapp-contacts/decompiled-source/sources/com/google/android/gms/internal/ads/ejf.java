package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejf.class */
public final class ejf implements Parcelable.Creator<zzvv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvv createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        long j = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                j = SafeParcelReader.f(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzvv(i, i2, str, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvv[] newArray(int i) {
        return new zzvv[i];
    }
}
