package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vz2.class */
public final class vz2 implements Parcelable.Creator<zzzb> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzb createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        zzym zzymVar = null;
        Bundle bundle = null;
        long j = 0;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                j = SafeParcelReader.m8309t(parcel, q);
            } else if (k == 3) {
                zzymVar = (zzym) SafeParcelReader.m8324e(parcel, q, zzym.CREATOR);
            } else if (k != 4) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                bundle = SafeParcelReader.m8328a(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzzb(str, j, zzymVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzb[] newArray(int i) {
        return new zzzb[i];
    }
}
