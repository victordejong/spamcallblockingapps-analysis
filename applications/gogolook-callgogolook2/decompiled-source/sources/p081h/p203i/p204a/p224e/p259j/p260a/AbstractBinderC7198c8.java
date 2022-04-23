package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.c8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/c8.class */
public abstract class AbstractBinderC7198c8 extends BinderC7453x2 implements AbstractC7185b8 {
    public AbstractBinderC7198c8() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    /* renamed from: a */
    public static AbstractC7185b8 m20965a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof AbstractC7185b8 ? (AbstractC7185b8) queryLocalInterface : new C7211d8(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo20789c(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo20787e0();
        } else if (i != 3) {
            return false;
        } else {
            mo20788d(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
