package com.google.android.gms.common;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.y */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/y.class */
public final class C6251y implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = null;
        IBinder iBinder = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 2) {
                z = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 3) {
                z2 = SafeParcelReader.m16951w(parcel, m16983C);
            } else if (m16952v == 4) {
                iBinder = SafeParcelReader.m16982D(parcel, m16983C);
            } else if (m16952v != 5) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                z3 = SafeParcelReader.m16951w(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zzn(str, z, z2, iBinder, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zzn[] newArray(int i) {
        return new zzn[i];
    }
}
