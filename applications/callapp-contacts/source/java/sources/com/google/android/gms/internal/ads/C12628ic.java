package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ic */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ic.class */
public final class C12628ic implements Parcelable.Creator<zzaiy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiy createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        String[] strArr = null;
        String[] strArr2 = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 2) {
                strArr = SafeParcelReader.m19121t(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                strArr2 = SafeParcelReader.m19121t(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaiy(str, strArr, strArr2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaiy[] newArray(int i) {
        return new zzaiy[i];
    }
}
