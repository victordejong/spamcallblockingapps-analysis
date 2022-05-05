package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaq.class */
public final class zzaq implements Parcelable.Creator<zzar> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzar createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        zzam zzamVar = null;
        String str2 = null;
        long j = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 2) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 3) {
                zzamVar = (zzam) SafeParcelReader.m14476n(parcel, B, zzam.CREATOR);
            } else if (u == 4) {
                str2 = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 5) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                j = SafeParcelReader.m14496F(parcel, B);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzar(str, zzamVar, str2, j);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzar[] newArray(int i) {
        return new zzar[i];
    }
}
