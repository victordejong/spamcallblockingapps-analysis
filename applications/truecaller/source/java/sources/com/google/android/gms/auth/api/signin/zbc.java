package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/zbc.class */
public final class zbc implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final SignInAccount createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 4) {
                str = SafeParcelReader.m38879j(parcel, readInt);
            } else if (c == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m38880i(parcel, readInt, GoogleSignInAccount.CREATOR);
            } else if (c != '\b') {
                SafeParcelReader.m38863z(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m38879j(parcel, readInt);
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
