package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zay.class */
public final class zay implements Parcelable.Creator<zax> {
    @Override // android.os.Parcelable.Creator
    public final zax createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        int i = 0;
        int i2 = 0;
        Scope[] scopeArr = null;
        int i3 = 0;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                i3 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.m38876m(parcel, readInt, Scope.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zax(i, i3, i2, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zax[] newArray(int i) {
        return new zax[i];
    }
}
