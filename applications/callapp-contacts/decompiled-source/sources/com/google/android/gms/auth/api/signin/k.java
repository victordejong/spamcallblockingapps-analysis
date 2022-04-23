package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/k.class */
public final class k implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 4) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.a(parcel, readInt, GoogleSignInAccount.CREATOR);
            } else if (c2 != '\b') {
                SafeParcelReader.b(parcel, readInt);
            } else {
                str2 = SafeParcelReader.m(parcel, readInt);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
