package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nu1.class */
public final class nu1 implements Parcelable.Creator<zzeag> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzeag createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            } else if (m8318k == 2) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k != 3) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                str2 = SafeParcelReader.m8323f(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzeag(i, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzeag[] newArray(int i) {
        return new zzeag[i];
    }
}
