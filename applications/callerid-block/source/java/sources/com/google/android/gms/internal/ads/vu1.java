package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vu1.class */
public final class vu1 implements Parcelable.Creator<zzear> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzear createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        byte[] bArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 2) {
                bArr = SafeParcelReader.m8327b(parcel, m8312q);
            } else if (m8318k != 3) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i2 = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzear(i, bArr, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzear[] newArray(int i) {
        return new zzear[i];
    }
}
