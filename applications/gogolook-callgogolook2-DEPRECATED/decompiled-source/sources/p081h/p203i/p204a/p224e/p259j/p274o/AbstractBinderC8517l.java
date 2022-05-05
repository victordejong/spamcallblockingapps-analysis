package p081h.p203i.p204a.p224e.p259j.p274o;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.location.LocationSettingsResult;
/* renamed from: h.i.a.e.j.o.l */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/o/l.class */
public abstract class AbstractBinderC8517l extends BinderC8527u implements AbstractC8515k {
    public AbstractBinderC8517l() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p274o.BinderC8527u
    /* renamed from: a */
    public final boolean mo16883a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo17866a((LocationSettingsResult) C8502d0.m17891a(parcel, LocationSettingsResult.CREATOR));
        return true;
    }
}
