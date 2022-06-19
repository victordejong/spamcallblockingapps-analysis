package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.IAccountAccessor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/AccountAccessor.class */
public class AccountAccessor extends IAccountAccessor.Stub {
    /* JADX WARN: Finally extract failed */
    public static Account getAccountBinderSafe(IAccountAccessor iAccountAccessor) {
        Account account;
        Account account2 = null;
        if (iAccountAccessor != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = iAccountAccessor.zzb();
                } catch (RemoteException e) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                    account = null;
                }
                Binder.restoreCallingIdentity(clearCallingIdentity);
                account2 = account;
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
        return account2;
    }

    public final boolean equals(Object obj) {
        throw null;
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zzb() {
        throw null;
    }
}
