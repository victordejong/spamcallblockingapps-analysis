package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m;
/* renamed from: h.i.a.e.d.n.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/a.class */
public class BinderC6963a extends AbstractC7003m.AbstractBinderC7004a {
    /* renamed from: a */
    public static Account m21464a(AbstractC7003m mVar) {
        Account account;
        if (mVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = mVar.mo21329l();
            } catch (RemoteException e) {
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
            return account;
        }
        account = null;
        return account;
    }
}
