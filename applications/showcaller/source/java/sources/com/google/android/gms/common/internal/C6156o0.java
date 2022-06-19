package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.o0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/o0.class */
public final class C6156o0 implements Parcelable.Creator<zax> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zax createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 3) {
                i3 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.m16955s(parcel, m16983C, Scope.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zax(i, i2, i3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zax[] newArray(int i) {
        return new zax[i];
    }
}
