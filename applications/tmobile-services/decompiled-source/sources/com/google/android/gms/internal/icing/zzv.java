package com.google.android.gms.internal.icing;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzv.class */
public final class zzv implements Parcelable.Creator<zzt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        zzm[] zzmVarArr = null;
        String str4 = null;
        zzu zzuVar = null;
        boolean z = false;
        int i = 1;
        boolean z2 = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 11) {
                str4 = SafeParcelReader.m14475o(parcel, B);
            } else if (u != 12) {
                switch (u) {
                    case 1:
                        str = SafeParcelReader.m14475o(parcel, B);
                        continue;
                    case 2:
                        str2 = SafeParcelReader.m14475o(parcel, B);
                        continue;
                    case 3:
                        z = SafeParcelReader.m14468v(parcel, B);
                        continue;
                    case 4:
                        i = SafeParcelReader.m14498D(parcel, B);
                        continue;
                    case 5:
                        z2 = SafeParcelReader.m14468v(parcel, B);
                        continue;
                    case 6:
                        str3 = SafeParcelReader.m14475o(parcel, B);
                        continue;
                    case 7:
                        zzmVarArr = (zzm[]) SafeParcelReader.m14472r(parcel, B, zzm.CREATOR);
                        continue;
                    default:
                        SafeParcelReader.m14493I(parcel, B);
                        continue;
                }
            } else {
                zzuVar = (zzu) SafeParcelReader.m14476n(parcel, B, zzu.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzt(str, str2, z, i, z2, str3, zzmVarArr, str4, zzuVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzt[] newArray(int i) {
        return new zzt[i];
    }
}
