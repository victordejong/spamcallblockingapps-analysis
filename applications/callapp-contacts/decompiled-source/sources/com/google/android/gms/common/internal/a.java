package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.i;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a.class */
public final class a extends i.a {
    public static Account a(i iVar) {
        Account account = null;
        account = null;
        if (iVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = iVar.a();
                } catch (RemoteException e) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                }
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    @Override // com.google.android.gms.common.internal.i
    public final Account a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        throw null;
    }
}
