package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* renamed from: com.google.android.gms.auth.c */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/c.class */
public final class C11770c implements Parcelable.Creator<AccountChangeEventsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        int m19146a = SafeParcelReader.m19146a(parcel);
        String str = null;
        Account account = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < m19146a) {
            int readInt = parcel.readInt();
            char c = (char) readInt;
            if (c == 1) {
                i = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 2) {
                i2 = SafeParcelReader.m19136e(parcel, readInt);
            } else if (c == 3) {
                str = SafeParcelReader.m19128m(parcel, readInt);
            } else if (c != 4) {
                SafeParcelReader.m19142b(parcel, readInt);
            } else {
                account = (Account) SafeParcelReader.m19143a(parcel, readInt, Account.CREATOR);
            }
        }
        SafeParcelReader.m19117x(parcel, m19146a);
        return new AccountChangeEventsRequest(i, i2, str, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
