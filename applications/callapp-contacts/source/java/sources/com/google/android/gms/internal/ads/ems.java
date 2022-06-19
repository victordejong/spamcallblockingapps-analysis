package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ems.class */
public final class ems implements Parcelable.Creator<zzzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzj createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                i = SafeParcelReader.m19136e(parcel, readInt);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zzzj(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzj[] newArray(int i) {
        return new zzzj[i];
    }
}
