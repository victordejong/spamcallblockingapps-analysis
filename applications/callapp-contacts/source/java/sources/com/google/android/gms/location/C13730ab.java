package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.location.ab */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/ab.class */
public final class C13730ab implements Parcelable.Creator<zzbj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbj createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = "";
        String str2 = "";
        String str3 = str2;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 2) {
                str3 = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 5) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbj(str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbj[] newArray(int i) {
        return new zzbj[i];
    }
}
