package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjk;
import com.google.android.gms.internal.ads.zzjo;
import com.google.android.gms.internal.ads.zzme;
import com.google.android.gms.internal.ads.zznf;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.n4 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n4.class */
public abstract class AbstractBinderC7334n4 extends BinderC7453x2 implements AbstractC7322m4 {
    public AbstractBinderC7334n4() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    /* renamed from: a */
    public static AbstractC7322m4 m20790a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof AbstractC7322m4 ? (AbstractC7322m4) queryLocalInterface : new C7346o4(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7169a5 a5Var = null;
        AbstractC7466y3 y3Var = null;
        AbstractC7419u4 u4Var = null;
        AbstractC7181b4 b4Var = null;
        AbstractC7383r4 r4Var = null;
        switch (i) {
            case 1:
                AbstractC7106b b = mo20750b();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, b);
                return true;
            case 2:
                destroy();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isReady = isReady();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, isReady);
                return true;
            case 4:
                boolean b2 = mo20749b((zzjk) C7465y2.m20509a(parcel, zzjk.CREATOR));
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, b2);
                return true;
            case 5:
                pause();
                parcel2.writeNoException();
                return true;
            case 6:
                resume();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    b4Var = queryLocalInterface instanceof AbstractC7181b4 ? (AbstractC7181b4) queryLocalInterface : new C7207d4(readStrongBinder);
                }
                mo20747b(b4Var);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    u4Var = queryLocalInterface2 instanceof AbstractC7419u4 ? (AbstractC7419u4) queryLocalInterface2 : new C7443w4(readStrongBinder2);
                }
                mo20753a(u4Var);
                parcel2.writeNoException();
                return true;
            case 9:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 10:
                stopLoading();
                parcel2.writeNoException();
                return true;
            case 11:
                mo20745g0();
                parcel2.writeNoException();
                return true;
            case 12:
                zzjo I = mo20758I();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, I);
                return true;
            case 13:
                mo20757a((zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                mo20797a(BinderC7242g0.m20925a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                mo20796a(BinderC7281j0.m20896a(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 19:
                mo20755a(AbstractBinderC7301k7.m20856a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    y3Var = queryLocalInterface3 instanceof AbstractC7466y3 ? (AbstractC7466y3) queryLocalInterface3 : new C7168a4(readStrongBinder3);
                }
                mo20752a(y3Var);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    a5Var = queryLocalInterface4 instanceof AbstractC7169a5 ? (AbstractC7169a5) queryLocalInterface4 : new C7195c5(readStrongBinder4);
                }
                mo20748b(a5Var);
                parcel2.writeNoException();
                return true;
            case 22:
                mo20744h(C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean isLoading = isLoading();
                parcel2.writeNoException();
                C7465y2.m20507a(parcel2, isLoading);
                return true;
            case 24:
                mo20751a(AbstractBinderC7165a1.m21014a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                setUserId(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 29:
                mo20756a((zznf) C7465y2.m20509a(parcel, zznf.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                mo20798a((zzme) C7465y2.m20509a(parcel, zzme.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String D0 = mo20760D0();
                parcel2.writeNoException();
                parcel2.writeString(D0);
                return true;
            case 32:
                AbstractC7419u4 z = mo20743z();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, z);
                return true;
            case 33:
                AbstractC7181b4 e = mo20746e();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, e);
                return true;
            case 34:
                setImmersiveMode(C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String H = mo20759H();
                parcel2.writeNoException();
                parcel2.writeString(H);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    r4Var = queryLocalInterface5 instanceof AbstractC7383r4 ? (AbstractC7383r4) queryLocalInterface5 : new C7407t4(readStrongBinder5);
                }
                mo20754a(r4Var);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                C7465y2.m20505b(parcel2, adMetadata);
                return true;
            case 38:
                mo20795g(parcel.readString());
                parcel2.writeNoException();
                return true;
        }
    }
}
