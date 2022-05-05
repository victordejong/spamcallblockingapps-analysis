package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.t8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/t8.class */
public abstract class AbstractBinderC7411t8 extends BinderC7453x2 implements AbstractC7399s8 {
    public AbstractBinderC7411t8() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    /* renamed from: a */
    public static AbstractC7399s8 m20657a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
        return queryLocalInterface instanceof AbstractC7399s8 ? (AbstractC7399s8) queryLocalInterface : new C7423u8(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7289j8 j8Var;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            j8Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
            j8Var = queryLocalInterface instanceof AbstractC7289j8 ? (AbstractC7289j8) queryLocalInterface : new C7302k8(readStrongBinder);
        }
        mo20678a(j8Var);
        parcel2.writeNoException();
        return true;
    }
}
