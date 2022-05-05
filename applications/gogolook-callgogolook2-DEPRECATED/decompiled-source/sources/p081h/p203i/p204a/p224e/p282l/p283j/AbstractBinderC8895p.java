package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
/* renamed from: h.i.a.e.l.j.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/p.class */
public abstract class AbstractBinderC8895p extends BinderC8537e implements AbstractC8894o {
    public AbstractBinderC8895p() {
        super("com.google.android.gms.maps.internal.IOnMapReadyCallback");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC8873b bVar;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            bVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.maps.internal.IGoogleMapDelegate");
            bVar = queryLocalInterface instanceof AbstractC8873b ? (AbstractC8873b) queryLocalInterface : new C8878d0(readStrongBinder);
        }
        mo16799a(bVar);
        parcel2.writeNoException();
        return true;
    }
}
