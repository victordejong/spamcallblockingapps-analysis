package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.IAccountAccessor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/AccountAccessor.class */
public class AccountAccessor extends IAccountAccessor.Stub {
    @KeepForSdk
    /* renamed from: c */
    public static Account m14598c(IAccountAccessor iAccountAccessor) {
        Account account;
        if (iAccountAccessor != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = iAccountAccessor.mo14540d();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
            return account;
        }
        account = null;
        return account;
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    /* renamed from: d */
    public final Account mo14540d() {
        throw new NoSuchMethodError();
    }

    public boolean equals(Object obj) {
        throw new NoSuchMethodError();
    }
}
