package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: h.i.a.e.j.a.q5 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/q5.class */
public abstract class AbstractBinderC7372q5 extends BinderC7453x2 implements AbstractC7359p5 {
    public AbstractBinderC7372q5() {
        super("com.google.android.gms.ads.internal.client.IVideoController");
    }

    /* renamed from: a */
    public static AbstractC7359p5 m20734a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoController");
        return queryLocalInterface instanceof AbstractC7359p5 ? (AbstractC7359p5) queryLocalInterface : new C7384r5(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7396s5 s5Var = null;
        switch (i) {
            case 1:
                play();
                throw null;
            case 2:
                pause();
                throw null;
            case 3:
                mo20672c(C7465y2.m20511a(parcel));
                throw null;
            case 4:
                mo20670m0();
                throw null;
            case 5:
                getPlaybackState();
                throw null;
            case 6:
                mo20671k0();
                throw null;
            case 7:
                mo20669n0();
                throw null;
            case 8:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
                    s5Var = queryLocalInterface instanceof AbstractC7396s5 ? (AbstractC7396s5) queryLocalInterface : new C7420u5(readStrongBinder);
                }
                mo20673a(s5Var);
                parcel2.writeNoException();
                return true;
            case 9:
                getAspectRatio();
                throw null;
            case 10:
                mo20668z0();
                throw null;
            case 11:
                AbstractC7396s5 C0 = mo20675C0();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, C0);
                return true;
            case 12:
                mo20674J();
                throw null;
            default:
                return false;
        }
    }
}
