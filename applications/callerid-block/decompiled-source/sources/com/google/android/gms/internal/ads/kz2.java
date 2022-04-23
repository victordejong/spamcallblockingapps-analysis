package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kz2.class */
public final class kz2 implements Parcelable.Creator<zzym> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzym createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        String str2 = null;
        zzym zzymVar = null;
        IBinder iBinder = null;
        int i = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                i = SafeParcelReader.m8310s(parcel, q);
            } else if (k == 2) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 3) {
                str2 = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 4) {
                zzymVar = (zzym) SafeParcelReader.m8324e(parcel, q, zzym.CREATOR);
            } else if (k != 5) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                iBinder = SafeParcelReader.m8311r(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzym(i, str, str2, zzymVar, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzym[] newArray(int i) {
        return new zzym[i];
    }
}
