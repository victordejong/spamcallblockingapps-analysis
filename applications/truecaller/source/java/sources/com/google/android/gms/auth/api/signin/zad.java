package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/auth/api/signin/zad.class */
public final class zad implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final GoogleSignInOptions createFromParcel(Parcel parcel) {
        int m38891A = SafeParcelReader.m38891A(parcel);
        ArrayList arrayList = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        ArrayList arrayList2 = null;
        Account account = null;
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < m38891A) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.m38867v(parcel, readInt);
                    break;
                case 2:
                    arrayList2 = SafeParcelReader.m38875n(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.m38880i(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 6:
                    z3 = SafeParcelReader.m38873p(parcel, readInt);
                    break;
                case 7:
                    str = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                case '\t':
                    arrayList = SafeParcelReader.m38875n(parcel, readInt, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case '\n':
                    str3 = SafeParcelReader.m38879j(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.m38863z(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.m38874o(parcel, m38891A);
        return new GoogleSignInOptions(i, arrayList2, account, z, z2, z3, str, str2, GoogleSignInOptions.m39121q2(arrayList), str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
