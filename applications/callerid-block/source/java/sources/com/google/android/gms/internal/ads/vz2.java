package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/vz2.class */
public final class vz2 implements Parcelable.Creator<zzzb> {
    /* JADX WARN: Type inference failed for: r0v25, types: [long] */
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzb createFromParcel(Parcel parcel) {
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        zzym zzymVar = null;
        Bundle bundle = null;
        char c = 0;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 2) {
                c = SafeParcelReader.m8309t(parcel, m8312q);
            } else if (m8318k == 3) {
                zzymVar = (zzym) SafeParcelReader.m8324e(parcel, m8312q, zzym.CREATOR);
            } else if (m8318k != 4) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                bundle = SafeParcelReader.m8328a(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzzb(str, c, zzymVar, bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzzb[] newArray(int i) {
        return new zzzb[i];
    }
}
