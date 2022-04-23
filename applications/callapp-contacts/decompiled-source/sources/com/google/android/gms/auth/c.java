package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelReader;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/auth/c.class */
public final class c implements Parcelable.Creator<AccountChangeEventsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        int a2 = SafeParcelReader.a(parcel);
        String str = null;
        Account account = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < a2) {
            int readInt = parcel.readInt();
            char c2 = (char) readInt;
            if (c2 == 1) {
                i = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 2) {
                i2 = SafeParcelReader.e(parcel, readInt);
            } else if (c2 == 3) {
                str = SafeParcelReader.m(parcel, readInt);
            } else if (c2 != 4) {
                SafeParcelReader.b(parcel, readInt);
            } else {
                account = (Account) SafeParcelReader.a(parcel, readInt, Account.CREATOR);
            }
        }
        SafeParcelReader.x(parcel, a2);
        return new AccountChangeEventsRequest(i, i2, str, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest[] newArray(int i) {
        return new AccountChangeEventsRequest[i];
    }
}
