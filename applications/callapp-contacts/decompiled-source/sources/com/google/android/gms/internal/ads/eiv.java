package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eiv.class */
public final class eiv implements Parcelable.Creator<zzvh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvh createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String str2 = null;
        zzvh zzvhVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 4) {
                zzvhVar = (zzvh) SafeParcelReader.a(parcel, readInt, zzvh.CREATOR);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                iBinder = SafeParcelReader.n(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzvh(i, str, str2, zzvhVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvh[] newArray(int i) {
        return new zzvh[i];
    }
}
