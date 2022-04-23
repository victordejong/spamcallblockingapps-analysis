package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/ao.class */
public final class ao implements Parcelable.Creator<zax> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zax createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                i3 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.b(parcel, readInt, Scope.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zax(i, i2, i3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zax[] newArray(int i) {
        return new zax[i];
    }
}
