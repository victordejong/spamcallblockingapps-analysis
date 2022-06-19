package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.jj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/jj.class */
public final class C1804jj implements Parcelable.Creator<zzawa> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawa createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        ParcelFileDescriptor parcelFileDescriptor = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                parcelFileDescriptor = (ParcelFileDescriptor) SafeParcelReader.m8324e(parcel, m8312q, ParcelFileDescriptor.CREATOR);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzawa(parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawa[] newArray(int i) {
        return new zzawa[i];
    }
}
