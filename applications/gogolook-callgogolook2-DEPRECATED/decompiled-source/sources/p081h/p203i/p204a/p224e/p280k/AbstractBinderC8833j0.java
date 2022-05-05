package p081h.p203i.p204a.p224e.p280k;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationResult;
import p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u;
import p081h.p203i.p204a.p224e.p259j.p274o.C8502d0;
/* renamed from: h.i.a.e.k.j0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/j0.class */
public abstract class AbstractBinderC8833j0 extends BinderC8527u implements AbstractC8831i0 {
    /* renamed from: a */
    public static AbstractC8831i0 m16884a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof AbstractC8831i0 ? (AbstractC8831i0) queryLocalInterface : new C8835k0(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u
    /* renamed from: a */
    public final boolean mo16883a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16885a((LocationResult) C8502d0.m17891a(parcel, LocationResult.CREATOR));
            return true;
        } else if (i != 2) {
            return false;
        } else {
            mo16886a((LocationAvailability) C8502d0.m17891a(parcel, LocationAvailability.CREATOR));
            return true;
        }
    }
}
