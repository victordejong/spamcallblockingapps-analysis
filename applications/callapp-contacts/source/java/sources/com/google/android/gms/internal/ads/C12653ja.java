package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ja */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ja.class */
public final class C12653ja implements Parcelable.Creator<zzajy> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajy createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 1000) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzajy(i, i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajy[] newArray(int i) {
        return new zzajy[i];
    }
}
