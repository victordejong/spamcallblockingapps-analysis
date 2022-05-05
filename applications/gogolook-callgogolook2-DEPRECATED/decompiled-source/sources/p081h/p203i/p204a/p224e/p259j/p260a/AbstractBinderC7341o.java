package p081h.p203i.p204a.p224e.p259j.p260a;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzjo;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
/* renamed from: h.i.a.e.j.a.o */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/o.class */
public abstract class AbstractBinderC7341o extends BinderC7453x2 implements AbstractC7329n {
    public AbstractBinderC7341o() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.BinderC7453x2
    /* renamed from: a */
    public final boolean mo20447a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        AbstractC7305l lVar = null;
        AbstractC7254h hVar = null;
        AbstractC7228f fVar = null;
        AbstractC7353p pVar = null;
        AbstractC7280j jVar = null;
        switch (i) {
            case 1:
                AbstractC7106b a = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                String readString = parcel.readString();
                Bundle bundle = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                Bundle bundle2 = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                zzjo zzjoVar = (zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
                    pVar = queryLocalInterface instanceof AbstractC7353p ? (AbstractC7353p) queryLocalInterface : new C7365q(readStrongBinder);
                }
                mo20707a(a, readString, bundle, bundle2, zzjoVar, pVar);
                parcel2.writeNoException();
                return true;
            case 2:
                mo20698q0();
                throw null;
            case 3:
                mo20709T();
                throw null;
            case 4:
                String readString2 = parcel.readString();
                String readString3 = parcel.readString();
                Bundle bundle3 = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                AbstractC7106b a2 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
                    fVar = queryLocalInterface2 instanceof AbstractC7228f ? (AbstractC7228f) queryLocalInterface2 : new C7241g(readStrongBinder2);
                }
                mo20706a(readString2, readString3, bundle3, a2, fVar, AbstractBinderC7304ka.m20823a(parcel.readStrongBinder()), (zzjo) C7465y2.m20509a(parcel, zzjo.CREATOR));
                parcel2.writeNoException();
                return true;
            case 5:
                AbstractC7359p5 videoController = getVideoController();
                parcel2.writeNoException();
                C7465y2.m20510a(parcel2, videoController);
                return true;
            case 6:
                String readString4 = parcel.readString();
                String readString5 = parcel.readString();
                Bundle bundle4 = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                AbstractC7106b a3 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
                    hVar = queryLocalInterface3 instanceof AbstractC7254h ? (AbstractC7254h) queryLocalInterface3 : new C7267i(readStrongBinder3);
                }
                mo20705a(readString4, readString5, bundle4, a3, hVar, AbstractBinderC7304ka.m20823a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                showInterstitial();
                parcel2.writeNoException();
                return true;
            case 8:
                String readString6 = parcel.readString();
                String readString7 = parcel.readString();
                Bundle bundle5 = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                AbstractC7106b a4 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
                    lVar = queryLocalInterface4 instanceof AbstractC7305l ? (AbstractC7305l) queryLocalInterface4 : new C7317m(readStrongBinder4);
                }
                mo20703a(readString6, readString7, bundle5, a4, lVar, AbstractBinderC7304ka.m20823a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                mo20708V();
                parcel2.writeNoException();
                return true;
            case 10:
                mo20701g(AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
                mo20702a(parcel.createStringArray(), (Bundle[]) parcel.createTypedArray(Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 12:
                String readString8 = parcel.readString();
                String readString9 = parcel.readString();
                Bundle bundle6 = (Bundle) C7465y2.m20509a(parcel, Bundle.CREATOR);
                AbstractC7106b a5 = AbstractC7106b.BinderC7107a.m21060a(parcel.readStrongBinder());
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
                    jVar = queryLocalInterface5 instanceof AbstractC7280j ? (AbstractC7280j) queryLocalInterface5 : new C7293k(readStrongBinder5);
                }
                mo20704a(readString8, readString9, bundle6, a5, jVar, AbstractBinderC7304ka.m20823a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
