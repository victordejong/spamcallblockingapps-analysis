package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.pa */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/pa.class */
public abstract class AbstractBinderC7364pa extends BinderC7453x2 implements AbstractC7352oa {
    public AbstractBinderC7364pa() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String i3 = mo20522i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 3:
                List k = mo20520k();
                parcel2.writeNoException();
                parcel2.writeList(k);
                return true;
            case 4:
                String j = mo20521j();
                parcel2.writeNoException();
                parcel2.writeString(j);
                return true;
            case 5:
                AbstractC7398s7 B = mo20529B();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, B);
                return true;
            case 6:
                String h = mo20523h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 7:
                String q = mo20518q();
                parcel2.writeNoException();
                parcel2.writeString(q);
                return true;
            case 8:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 9:
                mo20528a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 10:
                mo20525f(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                boolean x = mo20516x();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, x);
                return true;
            case 12:
                boolean A = mo20530A();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, A);
                return true;
            case 13:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, extras);
                return true;
            case 14:
                mo20526b(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                AbstractC7106b y = mo20515y();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, y);
                return true;
            case 16:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                AbstractC7361p7 g = mo20524g();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, g);
                return true;
            case 20:
                AbstractC7106b w = mo20517w();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, w);
                return true;
            case 21:
                AbstractC7106b m = mo20519m();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, m);
                return true;
            case 22:
                mo20527a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
