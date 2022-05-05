package p081h.p203i.p204a.p224e.p259j.p264e;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.e.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/e/o.class */
public final class C7527o extends C7513a implements AbstractC7525m {
    public C7527o(IBinder iBinder) {
        super(iBinder, "com.google.android.auth.IAuthManagerService");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p264e.AbstractC7525m
    /* renamed from: a */
    public final Bundle mo20396a(Account account, String str, Bundle bundle) throws RemoteException {
        Parcel G0 = m20403G0();
        C7524l.m20398a(G0, account);
        G0.writeString(str);
        C7524l.m20398a(G0, bundle);
        Parcel a = m20402a(5, G0);
        Bundle bundle2 = (Bundle) C7524l.m20399a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p264e.AbstractC7525m
    /* renamed from: a */
    public final Bundle mo20395a(String str, Bundle bundle) throws RemoteException {
        Parcel G0 = m20403G0();
        G0.writeString(str);
        C7524l.m20398a(G0, bundle);
        Parcel a = m20402a(2, G0);
        Bundle bundle2 = (Bundle) C7524l.m20399a(a, Bundle.CREATOR);
        a.recycle();
        return bundle2;
    }
}
