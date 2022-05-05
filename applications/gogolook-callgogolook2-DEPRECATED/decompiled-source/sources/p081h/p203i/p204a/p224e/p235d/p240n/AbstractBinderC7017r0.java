package p081h.p203i.p204a.p224e.p235d.p240n;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a;
import p081h.p203i.p204a.p224e.p259j.p267h.C7743c;
/* renamed from: h.i.a.e.d.n.r0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/n/r0.class */
public abstract class AbstractBinderC7017r0 extends BinderC7741a implements AbstractC7020s0 {
    public AbstractBinderC7017r0() {
        super("com.google.android.gms.common.internal.ICertData");
    }

    /* renamed from: a */
    public static AbstractC7020s0 m21299a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ICertData");
        return queryLocalInterface instanceof AbstractC7020s0 ? (AbstractC7020s0) queryLocalInterface : new C7022t0(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p267h.BinderC7741a
    /* renamed from: a */
    public final boolean mo19600a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC7106b E0 = mo21079E0();
            parcel2.writeNoException();
            C7743c.m19596a(parcel2, E0);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int C = mo21080C();
            parcel2.writeNoException();
            parcel2.writeInt(C);
            return true;
        }
    }
}
