package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/wz2.class */
public final class wz2 implements Parcelable.Creator<zzzd> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzd createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        int i = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            if (SafeParcelReader.m8318k(m8312q) != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                i = SafeParcelReader.m8310s(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzzd(i);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzd[] newArray(int i) {
        return new zzzd[i];
    }
}
