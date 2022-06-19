package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC12036i;
/* renamed from: com.google.android.gms.common.internal.a */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/internal/a.class */
public final class BinderC11969a extends AbstractC12036i.AbstractBinderC12037a {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Account m19229a(AbstractC12036i abstractC12036i) {
        Account account;
        Account account2 = null;
        if (abstractC12036i != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = abstractC12036i.mo19175a();
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

    @Override // com.google.android.gms.common.internal.AbstractC12036i
    /* renamed from: a */
    public final Account mo19175a() {
        throw null;
    }

    public final boolean equals(Object obj) {
        throw null;
    }
}
