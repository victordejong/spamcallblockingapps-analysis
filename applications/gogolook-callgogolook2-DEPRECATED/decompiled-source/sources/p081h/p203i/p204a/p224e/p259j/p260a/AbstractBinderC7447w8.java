package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.w8 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/w8.class */
public abstract class AbstractBinderC7447w8 extends BinderC7453x2 implements AbstractC7435v8 {
    public AbstractBinderC7447w8() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
    }

    /* renamed from: a */
    public static AbstractC7435v8 m20594a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnCustomClickListener");
        return queryLocalInterface instanceof AbstractC7435v8 ? (AbstractC7435v8) queryLocalInterface : new C7459x8(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7326m8 m8Var;
        if (i != 1) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            m8Var = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
            m8Var = queryLocalInterface instanceof AbstractC7326m8 ? (AbstractC7326m8) queryLocalInterface : new C7338n8(readStrongBinder);
        }
        mo20631a(m8Var, parcel.readString());
        parcel2.writeNoException();
        return true;
    }
}
