package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/signin/internal/zaj.class */
public final class zaj implements Parcelable.Creator<zai> {
    @Override // android.os.Parcelable.Creator
    public final zai createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        zat zatVar = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                zatVar = (zat) SafeParcelReader.m38880i(parcel, readInt, zat.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zai(i, zatVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zai[] newArray(int i) {
        return new zai[i];
    }
}
