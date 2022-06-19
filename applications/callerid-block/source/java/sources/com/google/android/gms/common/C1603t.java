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
        int m8305x = SafeParcelReader.m8305x(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m8305x) {
            int m8312q = SafeParcelReader.m8312q(parcel);
            int m8318k = SafeParcelReader.m8318k(m8312q);
            if (m8318k == 1) {
                str = SafeParcelReader.m8323f(parcel, m8312q);
            } else if (m8318k == 2) {
                z = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 3) {
                z2 = SafeParcelReader.m8317l(parcel, m8312q);
            } else if (m8318k == 4) {
                iBinder = SafeParcelReader.m8311r(parcel, m8312q);
            } else if (m8318k != 5) {
                SafeParcelReader.m8306w(parcel, m8312q);
            } else {
                z3 = SafeParcelReader.m8317l(parcel, m8312q);
            }
        }
        SafeParcelReader.m8319j(parcel, m8305x);
        return new zzn(str, z, z2, iBinder, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn[] newArray(int i) {
        return new zzn[i];
    }
}
