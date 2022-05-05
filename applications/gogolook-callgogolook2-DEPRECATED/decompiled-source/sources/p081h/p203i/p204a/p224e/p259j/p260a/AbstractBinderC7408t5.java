package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.t5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t5.class */
public abstract class AbstractBinderC7408t5 extends BinderC7453x2 implements AbstractC7396s5 {
    public AbstractBinderC7408t5() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo20681Y();
        } else if (i == 2) {
            mo20680Z();
        } else if (i == 3) {
            mo20682K();
        } else if (i == 4) {
            mo20683E();
        } else if (i != 5) {
            return false;
        } else {
            mo20679g(C7465y2.m20511a(parcel));
        }
        parcel2.writeNoException();
        return true;
    }
}
