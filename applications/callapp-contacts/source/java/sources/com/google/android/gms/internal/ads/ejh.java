package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejh.class */
public final class ejh implements Parcelable.Creator<zzvx> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        zzvh zzvhVar = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 == 2) {
                c = SafeParcelReader.m19135f(parcel, readInt);
            } else if (c2 == 3) {
                zzvhVar = (zzvh) SafeParcelReader.m19143a(parcel, readInt, zzvh.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m19126o(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzvx(str, c, zzvhVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx[] newArray(int i) {
        return new zzvx[i];
    }
}
