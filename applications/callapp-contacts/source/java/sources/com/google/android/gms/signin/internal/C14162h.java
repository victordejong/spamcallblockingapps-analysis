package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zat;
/* renamed from: com.google.android.gms.signin.internal.h */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/h.class */
public final class C14162h implements Parcelable.Creator<zai> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zai createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        zat zatVar = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                zatVar = (zat) SafeParcelReader.m19143a(parcel, readInt, zat.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zai(i, zatVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zai[] newArray(int i) {
        return new zai[i];
    }
}
