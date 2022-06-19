package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.ze */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ze.class */
public final class C13092ze implements Parcelable.Creator<zzbar> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbar createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        int i = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 2) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c == 3) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 4) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 5) {
                z = SafeParcelReader.m19139c(parcel, readInt);
            } else if (c != 6) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                z2 = SafeParcelReader.m19139c(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzbar(str, i, i2, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbar[] newArray(int i) {
        return new zzbar[i];
    }
}
