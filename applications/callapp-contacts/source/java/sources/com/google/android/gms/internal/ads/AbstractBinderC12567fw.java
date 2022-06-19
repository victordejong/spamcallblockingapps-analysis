package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.fw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fw.class */
public abstract class AbstractBinderC12567fw extends dvd implements AbstractC12564ft {
    public AbstractBinderC12567fw() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12565fu c12565fu;
        elw elwVar;
        switch (i) {
            case 2:
                String a = mo14677a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 3:
                List b = mo14671b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case 4:
                String c = mo14669c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 5:
                AbstractC12394dr d = mo14667d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 6:
                String e = mo14666e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 7:
                String f = mo14665f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                double g = mo14664g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                return true;
            case 9:
                String h = mo14663h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                String i3 = mo14662i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 11:
                emk j = mo14661j();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, j);
                return true;
            case 12:
                String k = mo14660k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                return true;
            case 13:
                mo14659l();
                parcel2.writeNoException();
                return true;
            case 14:
                AbstractC12371dj m = mo14658m();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, m);
                return true;
            case 15:
                mo14676a((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 16:
                boolean b2 = mo14670b((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dvc.m15673a(parcel2, b2);
                return true;
            case 17:
                mo14668c((Bundle) dvc.m15675a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 18:
                AbstractC12126b n = mo14657n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 19:
                AbstractC12126b o = mo14656o();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, o);
                return true;
            case 20:
                Bundle p = mo14655p();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, p);
                return true;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12565fu = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    c12565fu = queryLocalInterface instanceof AbstractC12563fs ? (AbstractC12563fs) queryLocalInterface : new C12565fu(readStrongBinder);
                }
                mo14672a(c12565fu);
                parcel2.writeNoException();
                return true;
            case 22:
                mo14654q();
                parcel2.writeNoException();
                return true;
            case 23:
                List r = mo14653r();
                parcel2.writeNoException();
                parcel2.writeList(r);
                return true;
            case 24:
                boolean s = mo14652s();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, s);
                return true;
            case 25:
                mo14674a(elx.m14802a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 26:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    elwVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
                    elwVar = queryLocalInterface2 instanceof elu ? (elu) queryLocalInterface2 : new elw(readStrongBinder2);
                }
                mo14675a(elwVar);
                parcel2.writeNoException();
                return true;
            case 27:
                mo14651t();
                parcel2.writeNoException();
                return true;
            case 28:
                mo14650u();
                parcel2.writeNoException();
                return true;
            case 29:
                AbstractC12389dq v = mo14649v();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, v);
                return true;
            case 30:
                boolean w = mo14648w();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, w);
                return true;
            case 31:
                emj x = mo14647x();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, x);
                return true;
            case 32:
                mo14673a(emh.m14785a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
