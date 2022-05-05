package p081h.p203i.p204a.p224e.p259j.p276q;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.q.f */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/q/f.class */
public abstract class AbstractBinderC8595f extends BinderC8597f1 implements AbstractC8586e {
    public AbstractBinderC8595f() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p276q.BinderC8597f1
    /* renamed from: a */
    public final boolean mo16605a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo17575h((Bundle) C8606g1.m17663a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
