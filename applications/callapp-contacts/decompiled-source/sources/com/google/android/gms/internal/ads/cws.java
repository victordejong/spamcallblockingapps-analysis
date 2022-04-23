package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cws.class */
public final class cws implements Parcelable.Creator<zzdwt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwt createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                bArr = SafeParcelReader.p(parcel, readInt);
            } else if (c2 != 3) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i2 = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzdwt(i, bArr, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzdwt[] newArray(int i) {
        return new zzdwt[i];
    }
}
