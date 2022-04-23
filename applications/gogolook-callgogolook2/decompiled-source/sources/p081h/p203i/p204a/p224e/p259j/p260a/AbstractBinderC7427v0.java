package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaio;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.v0 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/v0.class */
public abstract class AbstractBinderC7427v0 extends BinderC7453x2 implements AbstractC7415u0 {
    public AbstractBinderC7427v0() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    /* renamed from: a */
    public static AbstractC7415u0 m20642a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        return queryLocalInterface instanceof AbstractC7415u0 ? (AbstractC7415u0) queryLocalInterface : new C7439w0(iBinder);
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo20625a((zzaio) C7465y2.m20509a(parcel, zzaio.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i != 2) {
            AbstractC7475z0 z0Var = null;
            AbstractC7391s0 s0Var = null;
            if (i == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    z0Var = queryLocalInterface instanceof AbstractC7475z0 ? (AbstractC7475z0) queryLocalInterface : new C7178b1(readStrongBinder);
                }
                mo20623a(z0Var);
                parcel2.writeNoException();
                return true;
            } else if (i != 34) {
                switch (i) {
                    case 5:
                        boolean isLoaded = isLoaded();
                        parcel2.writeNoException();
                        C7465y2.m20507a(parcel2, isLoaded);
                        return true;
                    case 6:
                        pause();
                        parcel2.writeNoException();
                        return true;
                    case 7:
                        resume();
                        parcel2.writeNoException();
                        return true;
                    case 8:
                        destroy();
                        parcel2.writeNoException();
                        return true;
                    case 9:
                        mo20620r(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 10:
                        mo20621p(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 11:
                        mo20622e(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 12:
                        String mediationAdapterClassName = getMediationAdapterClassName();
                        parcel2.writeNoException();
                        parcel2.writeString(mediationAdapterClassName);
                        return true;
                    case 13:
                        setUserId(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 14:
                        mo20624a(AbstractBinderC7395s4.m20684a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 15:
                        Bundle adMetadata = getAdMetadata();
                        parcel2.writeNoException();
                        C7465y2.m20505b(parcel2, adMetadata);
                        return true;
                    case 16:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            s0Var = queryLocalInterface2 instanceof AbstractC7391s0 ? (AbstractC7391s0) queryLocalInterface2 : new C7403t0(readStrongBinder2);
                        }
                        mo20656a(s0Var);
                        parcel2.writeNoException();
                        return true;
                    case 17:
                        mo20655e(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    case 18:
                        mo20654l(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        return true;
                    case 19:
                        setCustomData(parcel.readString());
                        parcel2.writeNoException();
                        return true;
                    default:
                        return false;
                }
            } else {
                setImmersiveMode(C7465y2.m20511a(parcel));
                parcel2.writeNoException();
                return true;
            }
        } else {
            show();
            parcel2.writeNoException();
            return true;
        }
    }
}
