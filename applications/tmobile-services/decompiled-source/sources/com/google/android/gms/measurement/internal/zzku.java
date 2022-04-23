package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzku.class */
public final class zzku implements Parcelable.Creator<zzkr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkr createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        Long l = null;
        Float f = null;
        String str2 = null;
        String str3 = null;
        Double d = null;
        long j = 0;
        int i = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 2:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 3:
                    j = SafeParcelReader.m14496F(parcel, B);
                    break;
                case 4:
                    l = SafeParcelReader.m14495G(parcel, B);
                    break;
                case 5:
                    f = SafeParcelReader.m14501A(parcel, B);
                    break;
                case 6:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 7:
                    str3 = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 8:
                    d = SafeParcelReader.m14465y(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzkr(i, str, j, l, f, str2, str3, d);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzkr[] newArray(int i) {
        return new zzkr[i];
    }
}
