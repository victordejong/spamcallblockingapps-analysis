package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiv.class */
public final class eiv implements Parcelable.Creator<zzvh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvh createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String str2 = null;
        zzvh zzvhVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 4) {
                zzvhVar = (zzvh) SafeParcelReader.m19143a(parcel, readInt, zzvh.CREATOR);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.m19127n(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzvh(i, str, str2, zzvhVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvh[] newArray(int i) {
        return new zzvh[i];
    }
}
