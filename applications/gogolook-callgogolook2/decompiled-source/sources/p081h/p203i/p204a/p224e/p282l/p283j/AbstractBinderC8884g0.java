package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
/* renamed from: h.i.a.e.l.j.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/g0.class */
public abstract class AbstractBinderC8884g0 extends BinderC8537e implements AbstractC8882f0 {
    public AbstractBinderC8884g0() {
        super("com.google.android.gms.maps.internal.IOnCameraIdleListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo16794v();
        parcel2.writeNoException();
        return true;
    }
}
