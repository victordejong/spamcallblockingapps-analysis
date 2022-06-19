package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.u */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/u.class */
public final class C12950u implements Parcelable.Creator<zzaat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaat createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaat(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaat[] newArray(int i) {
        return new zzaat[i];
    }
}
