package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/h.class */
public final class C5910h implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
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
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            switch (SafeParcelReader.m16952v(m16983C)) {
                case 1:
                    i = SafeParcelReader.m16981E(parcel, m16983C);
                    break;
                case 2:
                    arrayList = SafeParcelReader.m16954t(parcel, m16983C, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.m16959o(parcel, m16983C, Account.CREATOR);
                    break;
                case 4:
                    z = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 5:
                    z2 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 6:
                    z3 = SafeParcelReader.m16951w(parcel, m16983C);
                    break;
                case 7:
                    str = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 8:
                    str2 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                case 9:
                    arrayList2 = SafeParcelReader.m16954t(parcel, m16983C, GoogleSignInOptionsExtensionParcelable.CREATOR);
                    break;
                case 10:
                    str3 = SafeParcelReader.m16958p(parcel, m16983C);
                    break;
                default:
                    SafeParcelReader.m16977I(parcel, m16983C);
                    break;
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new GoogleSignInOptions(i, arrayList, account, z, z2, z3, str, str2, arrayList2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
