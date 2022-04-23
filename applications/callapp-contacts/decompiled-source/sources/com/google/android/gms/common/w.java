package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/w.class */
public final class w implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzq createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        boolean z = false;
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                z = SafeParcelReader.c(parcel, readInt);
            } else if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzq(z, str, i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzq[] newArray(int i) {
        return new zzq[i];
    }
}
