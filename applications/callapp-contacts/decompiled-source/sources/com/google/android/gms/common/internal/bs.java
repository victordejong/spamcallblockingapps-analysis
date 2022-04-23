package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.c.a;
import com.google.android.gms.internal.c.c;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/bs.class */
public final class bs extends a implements i {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.i
    public final Account a() throws RemoteException {
        Parcel a2 = a(2, c());
        Account account = (Account) c.a(a2, Account.CREATOR);
        a2.recycle();
        return account;
    }
}
