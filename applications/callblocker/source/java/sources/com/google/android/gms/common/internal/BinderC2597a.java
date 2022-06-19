package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.AbstractC2647l;
/* renamed from: com.google.android.gms.common.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a.class */
public class BinderC2597a extends AbstractC2647l.AbstractBinderC2648a {
    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public static Account m14141a(AbstractC2647l abstractC2647l) {
        Account account = null;
        if (abstractC2647l != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = abstractC2647l.mo14000a();
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                } catch (RemoteException e) {
                    Log.w("AccountAccessor", "Remote account accessor probably died");
                    Binder.restoreCallingIdentity(clearCallingIdentity);
                    account = null;
                }
            } catch (Throwable th) {
                Binder.restoreCallingIdentity(clearCallingIdentity);
                throw th;
            }
        }
        return account;
    }

    @Override // com.google.android.gms.common.internal.AbstractC2647l
    /* renamed from: a */
    public final Account mo14000a() {
        throw new NoSuchMethodError();
    }

    public boolean equals(Object obj) {
        throw new NoSuchMethodError();
    }
}
