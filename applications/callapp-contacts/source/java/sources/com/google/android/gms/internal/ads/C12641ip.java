package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ip */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ip.class */
public final class C12641ip implements Parcelable.Creator<zzajm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajm createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 2) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c == 3) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m19128m(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzajm(str, z, i, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzajm[] newArray(int i) {
        return new zzajm[i];
    }
}
