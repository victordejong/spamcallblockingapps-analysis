package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/auth/p.class */
public final class p extends a implements n {
    /* JADX INFO: Access modifiers changed from: package-private */
    public p(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override // com.google.android.gms.internal.auth.n
    public final Bundle a(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        l.a(a2, account);
        a2.writeString(str);
        l.a(a2, bundle);
        Parcel a3 = a(5, a2);
        Bundle bundle2 = (Bundle) l.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }

    @Override // com.google.android.gms.internal.auth.n
    public final Bundle a(String str, Bundle bundle) throws RemoteException {
        Parcel a2 = a();
        a2.writeString(str);
        l.a(a2, bundle);
        Parcel a3 = a(2, a2);
        Bundle bundle2 = (Bundle) l.a(a3, Bundle.CREATOR);
        a3.recycle();
        return bundle2;
    }
}
