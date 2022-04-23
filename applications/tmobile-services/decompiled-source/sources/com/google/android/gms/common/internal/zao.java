package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/zao.class */
public final class zao implements Parcelable.Creator<SignInButtonConfig> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        int i = 0;
        Scope[] scopeArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                i = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 2) {
                i2 = SafeParcelReader.m14498D(parcel, B);
            } else if (u == 3) {
                i3 = SafeParcelReader.m14498D(parcel, B);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                scopeArr = (Scope[]) SafeParcelReader.m14472r(parcel, B, Scope.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new SignInButtonConfig(i, i2, i3, scopeArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInButtonConfig[] newArray(int i) {
        return new SignInButtonConfig[i];
    }
}
