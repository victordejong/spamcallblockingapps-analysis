package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.api.signin.j */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/j.class */
public final class C5937j implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 4) {
                str = SafeParcelReader.m16958p(parcel, m16983C);
            } else if (m16952v == 7) {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m16959o(parcel, m16983C, GoogleSignInAccount.CREATOR);
            } else if (m16952v != 8) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                str2 = SafeParcelReader.m16958p(parcel, m16983C);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i) {
        return new SignInAccount[i];
    }
}
