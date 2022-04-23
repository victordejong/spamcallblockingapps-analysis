package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejh.class */
public final class ejh implements Parcelable.Creator<zzvx> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        zzvh zzvhVar = null;
        Bundle bundle = null;
        long j = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                j = SafeParcelReader.f(parcel, readInt);
            } else if (c2 == 3) {
                zzvhVar = (zzvh) SafeParcelReader.a(parcel, readInt, zzvh.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                bundle = SafeParcelReader.o(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzvx(str, j, zzvhVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzvx[] newArray(int i) {
        return new zzvx[i];
    }
}
