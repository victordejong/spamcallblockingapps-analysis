package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.pi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/pi.class */
public final class C12824pi implements Parcelable.Creator<zzaqr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaqr createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 3) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzaqr(i, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaqr[] newArray(int i) {
        return new zzaqr[i];
    }
}
