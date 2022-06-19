package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcbi.class */
public final class zzcbi implements Parcelable.Creator<zzcbh> {
    @Override // android.os.Parcelable.Creator
    public final zzcbh createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            if (((char) readInt) != 2) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m38880i(parcel, readInt, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zzcbh(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbh[] newArray(int i) {
        return new zzcbh[i];
    }
}
