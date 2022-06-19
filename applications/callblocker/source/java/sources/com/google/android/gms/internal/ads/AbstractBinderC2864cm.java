package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cm.class */
public abstract class AbstractBinderC2864cm extends dkl implements AbstractC2861cj {
    public AbstractBinderC2864cm() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                AbstractC2731a a = mo11137a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 3:
                String b = mo11135b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            case 4:
                List c = mo11133c();
                parcel2.writeNoException();
                parcel2.writeList(c);
                z = true;
                break;
            case 5:
                String d = mo11131d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                z = true;
                break;
            case 6:
                AbstractC2844bu e = mo11130e();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, e);
                z = true;
                break;
            case 7:
                String f = mo11129f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 8:
                double g = mo11128g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                z = true;
                break;
            case 9:
                String h = mo11127h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                z = true;
                break;
            case 10:
                String i3 = mo11126i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                z = true;
                break;
            case 11:
                Bundle j = mo11125j();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, j);
                z = true;
                break;
            case 12:
                mo11124k();
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                eba l = mo11123l();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, l);
                z = true;
                break;
            case 14:
                mo11136a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                boolean b2 = mo11134b((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b2);
                z = true;
                break;
            case 16:
                mo11132c((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                AbstractC2837bn m = mo11122m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 18:
                AbstractC2731a n = mo11121n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 19:
                String o = mo11120o();
                parcel2.writeNoException();
                parcel2.writeString(o);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
