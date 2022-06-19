package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejf.class */
public final class ejf implements Parcelable.Creator<zzvv> {
    /* JADX WARN: Type inference failed for: r0v20, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvv createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        char c = 0;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzvv(i, i2, str, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvv[] newArray(int i) {
        return new zzvv[i];
    }
}
