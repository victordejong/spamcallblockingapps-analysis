package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.ao */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ao.class */
public final class C11989ao implements Parcelable.Creator<zax> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zax createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                i3 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.m19140b(parcel, readInt, Scope.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new zax(i, i2, i3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zax[] newArray(int i) {
        return new zax[i];
    }
}
