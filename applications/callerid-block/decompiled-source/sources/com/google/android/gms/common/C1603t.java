package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.t */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/t.class */
public final class C1603t implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int x = SafeParcelReader.m8305x(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < x) {
            int q = SafeParcelReader.m8312q(parcel);
            int k = SafeParcelReader.m8318k(q);
            if (k == 1) {
                str = SafeParcelReader.m8323f(parcel, q);
            } else if (k == 2) {
                z = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 3) {
                z2 = SafeParcelReader.m8317l(parcel, q);
            } else if (k == 4) {
                iBinder = SafeParcelReader.m8311r(parcel, q);
            } else if (k != 5) {
                SafeParcelReader.m8306w(parcel, q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, q);
            }
        }
        SafeParcelReader.m8319j(parcel, x);
        return new zzn(str, z, z2, iBinder, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn[] newArray(int i) {
        return new zzn[i];
    }
}
