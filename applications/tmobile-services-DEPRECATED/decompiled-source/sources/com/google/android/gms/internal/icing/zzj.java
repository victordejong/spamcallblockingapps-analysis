package com.google.android.gms.internal.icing;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzj.class */
public final class zzj implements Parcelable.Creator<zzh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzh createFromParcel(Parcel parcel) {
        int J = SafeParcelReader.m14492J(parcel);
        zzk[] zzkVarArr = null;
        String str = null;
        Account account = null;
        boolean z = false;
        while (parcel.dataPosition() < J) {
            int B = SafeParcelReader.m14500B(parcel);
            int u = SafeParcelReader.m14469u(B);
            if (u == 1) {
                zzkVarArr = (zzk[]) SafeParcelReader.m14472r(parcel, B, zzk.CREATOR);
            } else if (u == 2) {
                str = SafeParcelReader.m14475o(parcel, B);
            } else if (u == 3) {
                z = SafeParcelReader.m14468v(parcel, B);
            } else if (u != 4) {
                SafeParcelReader.m14493I(parcel, B);
            } else {
                account = (Account) SafeParcelReader.m14476n(parcel, B, Account.CREATOR);
            }
        }
        SafeParcelReader.m14470t(parcel, J);
        return new zzh(zzkVarArr, str, z, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzh[] newArray(int i) {
        return new zzh[i];
    }
}
