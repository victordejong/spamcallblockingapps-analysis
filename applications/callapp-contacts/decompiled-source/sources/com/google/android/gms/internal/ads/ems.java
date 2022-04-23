package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ems.class */
public final class ems implements Parcelable.Creator<zzzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzj createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                i = SafeParcelReader.e(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zzzj(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzzj[] newArray(int i) {
        return new zzzj[i];
    }
}
