package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.v4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v4.class */
public abstract class AbstractBinderC7431v4 extends BinderC7453x2 implements AbstractC7419u4 {
    public AbstractBinderC7431v4() {
        super("com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    /* renamed from: a */
    public static AbstractC7419u4 m20632a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
        return queryLocalInterface instanceof AbstractC7419u4 ? (AbstractC7419u4) queryLocalInterface : new C7443w4(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        onAppEvent(parcel.readString(), parcel.readString());
        parcel2.writeNoException();
        return true;
    }
}
