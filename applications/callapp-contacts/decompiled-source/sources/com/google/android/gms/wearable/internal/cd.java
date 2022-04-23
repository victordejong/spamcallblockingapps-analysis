package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/cd.class */
public final class cd implements Parcelable.Creator<zzfs> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfs createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        long j = 0;
        String str2 = null;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 2) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 3) {
                str2 = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                j = SafeParcelReader.f(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzfs(str, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzfs[] newArray(int i) {
        return new zzfs[i];
    }
}
