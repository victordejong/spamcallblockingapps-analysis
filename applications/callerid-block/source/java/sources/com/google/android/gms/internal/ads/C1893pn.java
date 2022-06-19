package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.pn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/pn.class */
public final class C1893pn implements Parcelable.Creator<zzbak> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbak createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        zzyx zzyxVar = null;
        zzys zzysVar = null;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 2) {
                str2 = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 3) {
                zzyxVar = (zzyx) SafeParcelReader.m8324e(parcel, m8312q, zzyx.CREATOR);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                zzysVar = (zzys) SafeParcelReader.m8324e(parcel, m8312q, zzys.CREATOR);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzbak(str, str2, zzyxVar, zzysVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzbak[] newArray(int i) {
        return new zzbak[i];
    }
}
