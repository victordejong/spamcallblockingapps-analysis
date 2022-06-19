package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/internal/zau.class */
public final class zau implements Parcelable.Creator<zat> {
    @Override // android.os.Parcelable.Creator
    public final zat createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        Account account = null;
        int i = 0;
        int i2 = 0;
        GoogleSignInAccount googleSignInAccount = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c == 2) {
                account = (Account) SafeParcelReader.m38880i(parcel, readInt, Account.CREATOR);
            } else if (c == 3) {
                i2 = SafeParcelReader.m38867v(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m38880i(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new zat(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zat[] newArray(int i) {
        return new zat[i];
    }
}
