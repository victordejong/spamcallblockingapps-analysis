package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.qi */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/qi.class */
public final class C1905qi implements Parcelable.Creator<zzavf> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavf createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        IBinder iBinder = null;
        IBinder iBinder2 = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                iBinder = SafeParcelReader.m8311r(parcel, m8312q);
            } else if (m8318k != 2) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                iBinder2 = SafeParcelReader.m8311r(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzavf(iBinder, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzavf[] newArray(int i) {
        return new zzavf[i];
    }
}
