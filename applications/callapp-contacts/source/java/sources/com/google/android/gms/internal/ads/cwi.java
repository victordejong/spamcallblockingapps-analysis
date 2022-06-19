package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwi.class */
public final class cwi implements Parcelable.Creator<zzdwc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwc createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                bArr = SafeParcelReader.m19125p(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzdwc(i, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwc[] newArray(int i) {
        return new zzdwc[i];
    }
}
