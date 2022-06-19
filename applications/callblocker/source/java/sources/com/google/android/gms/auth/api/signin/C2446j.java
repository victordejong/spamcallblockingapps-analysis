package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/j.class */
public final class C2446j implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 4:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 5:
                case 6:
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
                case 7:
                    googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m13965a(parcel, m13969a, GoogleSignInAccount.CREATOR);
                    break;
                case 8:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
