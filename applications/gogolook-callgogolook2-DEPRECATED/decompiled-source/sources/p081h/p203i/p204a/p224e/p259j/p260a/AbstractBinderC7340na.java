package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.na */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/na.class */
public abstract class AbstractBinderC7340na extends BinderC7453x2 implements AbstractC7328ma {
    public AbstractBinderC7340na() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String i3 = mo20586i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 3:
                List k = mo20584k();
                parcel2.writeNoException();
                parcel2.writeList(k);
                return true;
            case 4:
                String j = mo20585j();
                parcel2.writeNoException();
                parcel2.writeString(j);
                return true;
            case 5:
                AbstractC7398s7 o = mo20581o();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, o);
                return true;
            case 6:
                String h = mo20587h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 7:
                double p = mo20580p();
                parcel2.writeNoException();
                parcel2.writeDouble(p);
                return true;
            case 8:
                String r = mo20579r();
                parcel2.writeNoException();
                parcel2.writeString(r);
                return true;
            case 9:
                String n = mo20582n();
                parcel2.writeNoException();
                parcel2.writeString(n);
                return true;
            case 10:
                recordImpression();
                parcel2.writeNoException();
                return true;
            case 11:
                mo20592a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                mo20589f(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean x = mo20577x();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, x);
                return true;
            case 14:
                boolean A = mo20593A();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, A);
                return true;
            case 15:
                Bundle extras = getExtras();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, extras);
                return true;
            case 16:
                mo20590b(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 17:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 18:
                AbstractC7106b y = mo20576y();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, y);
                return true;
            case 19:
                AbstractC7361p7 g = mo20588g();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, g);
                return true;
            case 20:
                AbstractC7106b w = mo20578w();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, w);
                return true;
            case 21:
                AbstractC7106b m = mo20583m();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, m);
                return true;
            case 22:
                mo20591a(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()), AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
