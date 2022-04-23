package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/am.class */
public final class am implements Parcelable.Creator<zat> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zat createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                account = (Account) SafeParcelReader.a(parcel, readInt, Account.CREATOR);
            } else if (c2 == 3) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.a(parcel, readInt, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new zat(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zat[] newArray(int i) {
        return new zat[i];
    }
}
