package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import java.util.Map;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.e2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/e2.class */
public abstract class AbstractBinderC7218e2 extends BinderC7453x2 implements AbstractC7205d2 {
    public AbstractBinderC7218e2() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo20952d((Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle g = mo20950g((Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, g);
                return true;
            case 3:
                mo20953b(parcel.readString(), parcel.readString(), (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                mo20956a(parcel.readString(), parcel.readString(), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                Map a = mo20955a(parcel.readString(), parcel.readString(), C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                parcel2.writeMap(a);
                return true;
            case 6:
                int b = mo20954b(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(b);
                return true;
            case 7:
                mo20951f((Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                mo20957a(parcel.readString(), parcel.readString(), (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                List a2 = mo20958a(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(a2);
                return true;
            case 10:
                String N = mo20962N();
                parcel2.writeNoException();
                parcel2.writeString(N);
                return true;
            case 11:
                String X = mo20960X();
                parcel2.writeNoException();
                parcel2.writeString(X);
                return true;
            case 12:
                long p0 = mo20947p0();
                parcel2.writeNoException();
                parcel2.writeLong(p0);
                return true;
            case 13:
                mo20949j(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 14:
                mo20948l(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 15:
                mo20959a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String R = mo20961R();
                parcel2.writeNoException();
                parcel2.writeString(R);
                return true;
            case 17:
                String v0 = mo20945v0();
                parcel2.writeNoException();
                parcel2.writeString(v0);
                return true;
            case 18:
                String s0 = mo20946s0();
                parcel2.writeNoException();
                parcel2.writeString(s0);
                return true;
            default:
                return false;
        }
    }
}
