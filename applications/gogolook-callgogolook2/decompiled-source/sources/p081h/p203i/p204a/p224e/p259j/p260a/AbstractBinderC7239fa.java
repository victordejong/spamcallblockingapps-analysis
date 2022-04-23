package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.fa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/fa.class */
public abstract class AbstractBinderC7239fa extends BinderC7453x2 implements AbstractC7226ea {
    public AbstractBinderC7239fa() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* renamed from: a */
    public static AbstractC7226ea m20927a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof AbstractC7226ea ? (AbstractC7226ea) queryLocalInterface : new C7252ga(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC7265ha c = mo20933c(parcel.readString());
            parcel2.writeNoException();
            C7465y2.m20510a(parcel2, c);
            return true;
        } else if (i == 2) {
            boolean k = mo20931k(parcel.readString());
            parcel2.writeNoException();
            C7465y2.m20507a(parcel2, k);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            AbstractC7329n d = mo20932d(parcel.readString());
            parcel2.writeNoException();
            C7465y2.m20510a(parcel2, d);
            return true;
        }
    }
}
