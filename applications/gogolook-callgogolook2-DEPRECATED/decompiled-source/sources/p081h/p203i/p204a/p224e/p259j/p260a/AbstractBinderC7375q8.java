package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.q8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q8.class */
public abstract class AbstractBinderC7375q8 extends BinderC7453x2 implements AbstractC7362p8 {
    public AbstractBinderC7375q8() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    /* renamed from: a */
    public static AbstractC7362p8 m20731a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
        return queryLocalInterface instanceof AbstractC7362p8 ? (AbstractC7362p8) queryLocalInterface : new C7387r8(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7250g8 g8Var;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            g8Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
            g8Var = queryLocalInterface instanceof AbstractC7250g8 ? (AbstractC7250g8) queryLocalInterface : new C7263h8(readStrongBinder);
        }
        mo20738a(g8Var);
        parcel2.writeNoException();
        return true;
    }
}
