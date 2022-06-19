package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dx.class */
public abstract class AbstractBinderC3099dx extends dkl implements AbstractC3015du {
    public AbstractBinderC3099dx() {
        super("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3016dv c3016dv;
        boolean z;
        switch (i) {
            case 2:
                String a = mo8482a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 3:
                List b = mo8476b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                z = true;
                break;
            case 4:
                String c = mo8474c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 5:
                AbstractC2844bu d = mo8472d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 6:
                String e = mo8471e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                z = true;
                break;
            case 7:
                String f = mo8470f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 8:
                double g = mo8469g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                z = true;
                break;
            case 9:
                String h = mo8468h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                z = true;
                break;
            case 10:
                String i3 = mo8467i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                z = true;
                break;
            case 11:
                eba j = mo8466j();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, j);
                z = true;
                break;
            case 12:
                String k = mo8465k();
                parcel2.writeNoException();
                parcel2.writeString(k);
                z = true;
                break;
            case 13:
                mo8464l();
                parcel2.writeNoException();
                z = true;
                break;
            case 14:
                AbstractC2837bn m = mo8463m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 15:
                mo8481a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 16:
                boolean b2 = mo8475b((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b2);
                z = true;
                break;
            case 17:
                mo8473c((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 18:
                AbstractC2731a n = mo8462n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 19:
                AbstractC2731a o = mo8461o();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, o);
                z = true;
                break;
            case 20:
                Bundle p = mo8460p();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, p);
                z = true;
                break;
            case 21:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3016dv = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
                    c3016dv = queryLocalInterface instanceof AbstractC3014dt ? (AbstractC3014dt) queryLocalInterface : new C3016dv(readStrongBinder);
                }
                mo8480a(c3016dv);
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                mo8459q();
                parcel2.writeNoException();
                z = true;
                break;
            case 23:
                List r = mo8458r();
                parcel2.writeNoException();
                parcel2.writeList(r);
                z = true;
                break;
            case 24:
                boolean s = mo8457s();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, s);
                z = true;
                break;
            case 25:
                mo8478a(ean.m8100a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 26:
                mo8479a(eak.m8101a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 27:
                mo8456t();
                parcel2.writeNoException();
                z = true;
                break;
            case 28:
                mo8455u();
                parcel2.writeNoException();
                z = true;
                break;
            case 29:
                AbstractC2843bt v = mo8454v();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, v);
                z = true;
                break;
            case 30:
                boolean w = mo8453w();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, w);
                z = true;
                break;
            case 31:
                eav x = mo8452x();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, x);
                z = true;
                break;
            case 32:
                mo8477a(eat.m8096a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
