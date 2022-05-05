package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.s4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/s4.class */
public abstract class AbstractBinderC7395s4 extends BinderC7453x2 implements AbstractC7383r4 {
    public AbstractBinderC7395s4() {
        super("com.google.android.gms.ads.internal.client.IAdMetadataListener");
    }

    /* renamed from: a */
    public static AbstractC7383r4 m20684a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
        return queryLocalInterface instanceof AbstractC7383r4 ? (AbstractC7383r4) queryLocalInterface : new C7407t4(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        mo20710r0();
        parcel2.writeNoException();
        return true;
    }
}
