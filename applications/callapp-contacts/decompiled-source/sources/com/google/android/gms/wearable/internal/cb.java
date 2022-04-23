package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cb.class */
public final class cb implements Parcelable.Creator<zzfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfo createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        boolean z = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 4) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                z = SafeParcelReader.c(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzfo(str, str2, i, z);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfo[] newArray(int i) {
        return new zzfo[i];
    }
}
