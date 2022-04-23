package p081h.p203i.p204a.p224e.p235d.p240n.p242y;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p265f.BinderC7530b;
/* renamed from: h.i.a.e.d.n.y.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/y/l.class */
public abstract class AbstractBinderC7045l extends BinderC7530b implements AbstractC7044k {
    public AbstractBinderC7045l() {
        super("com.google.android.gms.common.internal.service.ICommonCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p265f.BinderC7530b
    /* renamed from: a */
    public boolean mo16062a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo21194d(parcel.readInt());
        parcel2.writeNoException();
        return true;
    }
}
