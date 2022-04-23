package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.w */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/w.class */
public final class C1629w implements Parcelable.Creator<zzs> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        boolean z = false;
        String str = null;
        IBinder iBinder = null;
        boolean z2 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                iBinder = SafeParcelReader.m8311r(parcel, q);
            } else if (k == 3) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k != 4) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                z2 = SafeParcelReader.m8317l(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzs(str, iBinder, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzs[] newArray(int i) {
        return new zzs[i];
    }
}
