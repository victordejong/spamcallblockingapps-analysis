package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/xc0.class */
public final class xc0 implements Parcelable.Creator<zzcbh> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbh createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            if (SafeParcelReader.m16952v(m16983C) != 2) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m16959o(parcel, m16983C, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzcbh(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzcbh[] newArray(int i) {
        return new zzcbh[i];
    }
}
