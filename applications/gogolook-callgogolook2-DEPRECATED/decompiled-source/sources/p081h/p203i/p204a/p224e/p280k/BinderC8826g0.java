package p081h.p203i.p204a.p224e.p280k;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u;
/* renamed from: h.i.a.e.k.g0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/k/g0.class */
public class BinderC8826g0 extends BinderC8527u implements AbstractC8824f0 {
    /* renamed from: a */
    public static AbstractC8824f0 m16889a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.IDeviceOrientationListener");
        return queryLocalInterface instanceof AbstractC8824f0 ? (AbstractC8824f0) queryLocalInterface : new C8829h0(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u
    /* renamed from: a */
    public final boolean mo16883a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        throw new NoSuchMethodError();
    }
}
