package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzy.class */
public final class zzy implements Parcelable.Creator<zzw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        zzi zziVar = null;
        String str = null;
        zzh zzhVar = null;
        String str2 = null;
        long j = 0;
        int i = 0;
        boolean z = false;
        int i2 = -1;
        int i3 = 0;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            switch (SafeParcelReader.m14469u(B)) {
                case 1:
                    zziVar = (zzi) SafeParcelReader.m14476n(parcel, B, zzi.CREATOR);
                    break;
                case 2:
                    j = SafeParcelReader.m14496F(parcel, B);
                    break;
                case 3:
                    i = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 4:
                    str = SafeParcelReader.m14475o(parcel, B);
                    break;
                case 5:
                    zzhVar = (zzh) SafeParcelReader.m14476n(parcel, B, zzh.CREATOR);
                    break;
                case 6:
                    z = SafeParcelReader.m14468v(parcel, B);
                    break;
                case 7:
                    i2 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 8:
                    i3 = SafeParcelReader.m14498D(parcel, B);
                    break;
                case 9:
                    str2 = SafeParcelReader.m14475o(parcel, B);
                    break;
                default:
                    SafeParcelReader.m14493I(parcel, B);
                    break;
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzw(zziVar, j, i, str, zzhVar, z, i2, i3, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw[] newArray(int i) {
        return new zzw[i];
    }
}
