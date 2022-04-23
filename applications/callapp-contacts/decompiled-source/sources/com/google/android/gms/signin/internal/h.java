package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import com.google.android.gms.common.internal.zat;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/signin/internal/h.class */
public final class h implements Parcelable.Creator<zai> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zai createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        zat zatVar = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                zatVar = (zat) SafeParcelReader.a(parcel, readInt, zat.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zai(i, zatVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zai[] newArray(int i) {
        return new zai[i];
    }
}
