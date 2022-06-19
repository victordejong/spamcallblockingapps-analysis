package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.internal.C2421a;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
import java.util.ArrayList;
/* renamed from: com.google.android.gms.auth.api.signin.h */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/auth/api/signin/h.class */
public final class C2418h implements Parcelable.Creator<GoogleSignInOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions createFromParcel(Parcel parcel) {
        int m13964b = SafeParcelReader.m13964b(parcel);
        String str = null;
        ArrayList arrayList = null;
        String str2 = null;
        String str3 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        Account account = null;
        ArrayList arrayList2 = null;
        int i = 0;
        while (parcel.dataPosition() < m13964b) {
            int m13969a = SafeParcelReader.m13969a(parcel);
            switch (SafeParcelReader.m13970a(m13969a)) {
                case 1:
                    i = SafeParcelReader.m13958e(parcel, m13969a);
                    break;
                case 2:
                    arrayList2 = SafeParcelReader.m13960c(parcel, m13969a, Scope.CREATOR);
                    break;
                case 3:
                    account = (Account) SafeParcelReader.m13965a(parcel, m13969a, Account.CREATOR);
                    break;
                case 4:
                    z3 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 5:
                    z2 = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 6:
                    z = SafeParcelReader.m13961c(parcel, m13969a);
                    break;
                case 7:
                    str3 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 8:
                    str2 = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                case 9:
                    arrayList = SafeParcelReader.m13960c(parcel, m13969a, C2421a.CREATOR);
                    break;
                case 10:
                    str = SafeParcelReader.m13952k(parcel, m13969a);
                    break;
                default:
                    SafeParcelReader.m13963b(parcel, m13969a);
                    break;
            }
        }
        SafeParcelReader.m13945r(parcel, m13964b);
        return new GoogleSignInOptions(i, arrayList2, account, z3, z2, z, str3, str2, arrayList, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ GoogleSignInOptions[] newArray(int i) {
        return new GoogleSignInOptions[i];
    }
}
