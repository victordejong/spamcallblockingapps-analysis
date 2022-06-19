package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.common.internal.m0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/m0.class */
public final class C6149m0 implements Parcelable.Creator<zat> {
    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zat createFromParcel(Parcel parcel) {
        int m16976J = SafeParcelReader.m16976J(parcel);
        Account account = null;
        GoogleSignInAccount googleSignInAccount = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m16976J) {
            int m16983C = SafeParcelReader.m16983C(parcel);
            int m16952v = SafeParcelReader.m16952v(m16983C);
            if (m16952v == 1) {
                i = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v == 2) {
                account = (Account) SafeParcelReader.m16959o(parcel, m16983C, Account.CREATOR);
            } else if (m16952v == 3) {
                i2 = SafeParcelReader.m16981E(parcel, m16983C);
            } else if (m16952v != 4) {
                SafeParcelReader.m16977I(parcel, m16983C);
            } else {
                googleSignInAccount = (GoogleSignInAccount) SafeParcelReader.m16959o(parcel, m16983C, GoogleSignInAccount.CREATOR);
            }
        }
        SafeParcelReader.m16953u(parcel, m16976J);
        return new zat(i, account, i2, googleSignInAccount);
    }

    @Override // android.os.Parcelable.Creator
    public final /* bridge */ /* synthetic */ zat[] newArray(int i) {
        return new zat[i];
    }
}
