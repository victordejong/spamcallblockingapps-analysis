package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.internal.ads.hk */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/hk.class */
public final class C1770hk implements Parcelable.Creator<zzawz> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawz createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        zzys zzysVar = null;
        String str = null;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 2) {
                zzysVar = (zzys) SafeParcelReader.m8324e(parcel, q, zzys.CREATOR);
            } else if (k != 3) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                str = SafeParcelReader.m8323f(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzawz(zzysVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzawz[] newArray(int i) {
        return new zzawz[i];
    }
}
