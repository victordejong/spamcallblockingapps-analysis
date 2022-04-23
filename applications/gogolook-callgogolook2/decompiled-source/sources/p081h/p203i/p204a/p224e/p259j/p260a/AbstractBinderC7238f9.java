package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.f9 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/f9.class */
public abstract class AbstractBinderC7238f9 extends BinderC7453x2 implements AbstractC7225e9 {
    public AbstractBinderC7238f9() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    /* renamed from: a */
    public static AbstractC7225e9 m20928a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        return queryLocalInterface instanceof AbstractC7225e9 ? (AbstractC7225e9) queryLocalInterface : new C7251g9(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7290j9 j9Var;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            j9Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
            j9Var = queryLocalInterface instanceof AbstractC7290j9 ? (AbstractC7290j9) queryLocalInterface : new C7303k9(readStrongBinder);
        }
        mo20645a(j9Var);
        parcel2.writeNoException();
        return true;
    }
}
