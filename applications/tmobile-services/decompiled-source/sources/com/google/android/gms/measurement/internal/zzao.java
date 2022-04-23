package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzao.class */
public final class zzao implements Parcelable.Creator<zzam> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzam createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        Bundle bundle = null;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            if (SafeParcelReader.m14469u(B) != 2) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                bundle = SafeParcelReader.m14484f(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzam(bundle);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzam[] newArray(int i) {
        return new zzam[i];
    }
}
