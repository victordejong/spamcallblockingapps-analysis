package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bz.class */
public final class bz implements Parcelable.Creator<zzfe> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfe createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        byte[] bArr = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 4) {
                bArr = SafeParcelReader.p(parcel, readInt);
            } else if (c2 != 5) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzfe(i, str, bArr, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfe[] newArray(int i) {
        return new zzfe[i];
    }
}
