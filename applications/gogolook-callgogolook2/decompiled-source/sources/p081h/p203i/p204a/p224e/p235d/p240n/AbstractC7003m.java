package p081h.p203i.p204a.p224e.p235d.p240n;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a;
import p081h.p203i.p204a.p224e.p259j.p267h.C7742b;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.d.n.m */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/m.class */
public interface AbstractC7003m extends IInterface {

    /* renamed from: h.i.a.e.d.n.m$a */
    /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/m$a.class */
    public static abstract class AbstractBinderC7004a extends BinderC7741a implements AbstractC7003m {

        /* renamed from: h.i.a.e.d.n.m$a$a */
        /* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/m$a$a.class */
        public static final class C7005a extends C7742b implements AbstractC7003m {
            public C7005a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // p081h.p203i.p204a.p224e.p235d.p240n.AbstractC7003m
            /* renamed from: l */
            public final Account mo21329l() throws RemoteException {
                Parcel a = m19599a(2, m19598c());
                Account account = (Account) C7743c.m19595a(a, Account.CREATOR);
                a.recycle();
                return account;
            }
        }

        /* renamed from: a */
        public static AbstractC7003m m21330a(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return queryLocalInterface instanceof AbstractC7003m ? (AbstractC7003m) queryLocalInterface : new C7005a(iBinder);
        }
    }

    /* renamed from: l */
    Account mo21329l() throws RemoteException;
}
