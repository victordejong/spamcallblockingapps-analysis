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
    /* renamed from: a */
    public static Account m17399a(IAccountAccessor iAccountAccessor) {
        Account account;
        if (iAccountAccessor != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = iAccountAccessor.zza();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
            Preconditions.m17288a(account);
            return account;
        }
        account = null;
        Preconditions.m17288a(account);
        return account;
    }

    public boolean equals(Object obj) {
        throw new NoSuchMethodError();
    }

    @Override // com.google.android.gms.common.internal.IAccountAccessor
    public final Account zza() {
        throw new NoSuchMethodError();
    }
}
