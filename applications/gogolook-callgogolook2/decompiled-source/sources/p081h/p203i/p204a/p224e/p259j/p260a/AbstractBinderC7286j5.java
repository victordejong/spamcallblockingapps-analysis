package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.j5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/j5.class */
public abstract class AbstractBinderC7286j5 extends BinderC7453x2 implements AbstractC7273i5 {
    public AbstractBinderC7286j5() {
        super("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        onAdMuted();
        parcel2.writeNoException();
        return true;
    }
}
