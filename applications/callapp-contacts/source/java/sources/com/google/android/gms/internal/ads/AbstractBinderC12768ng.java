package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.ng */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ng.class */
public abstract class AbstractBinderC12768ng extends dvd implements AbstractC12769nh {
    public AbstractBinderC12768ng() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String a = mo14328a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                return true;
            case 3:
                List b = mo14325b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                return true;
            case 4:
                String c = mo14323c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                return true;
            case 5:
                AbstractC12394dr d = mo14322d();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, d);
                return true;
            case 6:
                String e = mo14321e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                return true;
            case 7:
                String f = mo14320f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                return true;
            case 8:
                double g = mo14319g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                return true;
            case 9:
                String h = mo14318h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                return true;
            case 10:
                String i3 = mo14317i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                return true;
            case 11:
                emk j = mo14316j();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, j);
                return true;
            case 12:
                AbstractC12371dj k = mo14315k();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, k);
                return true;
            case 13:
                AbstractC12126b l = mo14314l();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, l);
                return true;
            case 14:
                AbstractC12126b m = mo14313m();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, m);
                return true;
            case 15:
                AbstractC12126b n = mo14312n();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, n);
                return true;
            case 16:
                Bundle o = mo14311o();
                parcel2.writeNoException();
                dvc.m15671b(parcel2, o);
                return true;
            case 17:
                boolean p = mo14310p();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, p);
                return true;
            case 18:
                boolean q = mo14309q();
                parcel2.writeNoException();
                dvc.m15673a(parcel2, q);
                return true;
            case 19:
                mo14308r();
                parcel2.writeNoException();
                return true;
            case 20:
                mo14327a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 21:
                mo14326a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                mo14324b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 23:
                float s = mo14307s();
                parcel2.writeNoException();
                parcel2.writeFloat(s);
                return true;
            case 24:
                float t = mo14306t();
                parcel2.writeNoException();
                parcel2.writeFloat(t);
                return true;
            case 25:
                float u = mo14305u();
                parcel2.writeNoException();
                parcel2.writeFloat(u);
                return true;
            default:
                return false;
        }
    }
}
