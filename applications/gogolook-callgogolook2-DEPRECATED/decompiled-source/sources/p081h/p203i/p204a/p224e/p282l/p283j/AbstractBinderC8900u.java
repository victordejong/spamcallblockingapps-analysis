package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
/* renamed from: h.i.a.e.l.j.u */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/u.class */
public abstract class AbstractBinderC8900u extends BinderC8537e implements AbstractC8899t {
    public AbstractBinderC8900u() {
        super("com.google.android.gms.maps.internal.IOnStreetViewPanoramaReadyCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC8879e eVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            eVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate");
            eVar = queryLocalInterface instanceof AbstractC8879e ? (AbstractC8879e) queryLocalInterface : new C8902w(readStrongBinder);
        }
        mo16798a(eVar);
        parcel2.writeNoException();
        return true;
    }
}
