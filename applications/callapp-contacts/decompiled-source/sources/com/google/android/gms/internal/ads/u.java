package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/u.class */
public final class u implements Parcelable.Creator<zzaat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaat createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i2 = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzaat(i, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaat[] newArray(int i) {
        return new zzaat[i];
    }
}
