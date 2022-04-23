package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ic.class */
public final class ic implements Parcelable.Creator<zzaiy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiy createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 2) {
                strArr = SafeParcelReader.t(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                strArr2 = SafeParcelReader.t(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaiy(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiy[] newArray(int i) {
        return new zzaiy[i];
    }
}
