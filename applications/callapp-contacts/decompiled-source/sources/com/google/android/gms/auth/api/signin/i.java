package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/api/signin/i.class */
public final class i implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        ArrayList arrayList = null;
        Account account = null;
        String str = null;
        String str2 = null;
        ArrayList arrayList2 = null;
        String str3 = null;
        int i = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            switch ((char) readInt) {
                case 1:
                    i = SafeParcelReader.e(parcel, readInt);
                    break;
                case 2:
                    arrayList = SafeParcelReader.c(parcel, readInt, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.a(parcel, readInt, Account.CREATOR);
                    break;
                case 4:
                    z = SafeParcelReader.c(parcel, readInt);
                    break;
                case 5:
                    z2 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 6:
                    z3 = SafeParcelReader.c(parcel, readInt);
                    break;
                case 7:
                    str = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\b':
                    str2 = SafeParcelReader.m(parcel, readInt);
                    break;
                case '\t':
                    arrayList2 = SafeParcelReader.c(parcel, readInt, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case '\n':
                    str3 = SafeParcelReader.m(parcel, readInt);
                    break;
                default:
                    SafeParcelReader.b(parcel, readInt);
                    break;
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
