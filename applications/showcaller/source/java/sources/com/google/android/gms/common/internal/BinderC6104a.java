package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.internal.AbstractC6134i;
/* renamed from: com.google.android.gms.common.internal.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/internal/a.class */
public class BinderC6104a extends AbstractC6134i.AbstractBinderC6135a {
    /* JADX WARN: Finally extract failed */
    @RecentlyNullable
    /* renamed from: J0 */
    public static Account m17146J0(@RecentlyNonNull AbstractC6134i abstractC6134i) {
        Account account;
        Account account2 = null;
        if (abstractC6134i != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                try {
                    account = abstractC6134i.mo16986b();
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
}
