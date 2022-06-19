package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.ae */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/ae.class */
public final class C2602ae implements Parcelable.Creator<C2667t> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2667t createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        Account account = null;
        int i2 = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i2 = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    account = (Account) SafeParcelReader.m13965a(parcel, m13969a, Account.CREATOR);
                    break;
                case 3:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 4:
                    googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m13965a(parcel, m13969a, GoogleSignInAccount.CREATOR);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new C2667t(i2, account, i, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ C2667t[] newArray(int i) {
        return new C2667t[i];
    }
}
