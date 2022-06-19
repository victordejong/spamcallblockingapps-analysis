package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbdq.class */
public final class zzbdq implements Parcelable.Creator<zzbdp> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final zzbdp createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = null;
        zzbcz zzbczVar = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c2 == 2) {
                c = SafeParcelReader.m38866w(parcel, readInt);
            } else if (c2 == 3) {
                zzbczVar = (zzbcz) SafeParcelReader.m38880i(parcel, readInt, zzbcz.CREATOR);
            } else if (c2 != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                bundle = SafeParcelReader.m38886c(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzbdp(str, c, zzbczVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbdp[] newArray(int i) {
        return new zzbdp[i];
    }
}
