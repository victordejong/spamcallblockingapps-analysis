package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/j.class */
public final class C12060j implements Parcelable.Creator<Feature> {
    /* JADX WARN: Type inference failed for: r0v18, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Feature createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        int i = 0;
        char c = 65535;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c2 == 2) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                c = SafeParcelReader.m19135f(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new Feature(str, i, c);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ Feature[] newArray(int i) {
        return new Feature[i];
    }
}
