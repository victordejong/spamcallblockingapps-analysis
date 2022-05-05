package p081h.p203i.p204a.p224e.p282l.p283j;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.maps.model.LatLng;
import p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e;
import p081h.p203i.p204a.p224e.p259j.p275p.C8538f;
/* renamed from: h.i.a.e.l.j.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/l/j/l.class */
public abstract class AbstractBinderC8891l extends BinderC8537e implements AbstractC8890k {
    public AbstractBinderC8891l() {
        super("com.google.android.gms.maps.internal.IOnMapClickListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p275p.BinderC8537e
    /* renamed from: a */
    public final boolean mo16820a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo16793a((LatLng) C8538f.m17857a(parcel, LatLng.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
