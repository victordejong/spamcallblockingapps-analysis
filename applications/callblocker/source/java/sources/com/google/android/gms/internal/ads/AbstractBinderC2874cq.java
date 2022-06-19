package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.cq */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cq.class */
public abstract class AbstractBinderC2874cq extends dkl implements AbstractC2869cn {
    public AbstractBinderC2874cq() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                AbstractC2731a a = mo10916a();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 3:
                String b = mo10914b();
                parcel2.writeNoException();
                parcel2.writeString(b);
                z = true;
                break;
            case 4:
                List c = mo10912c();
                parcel2.writeNoException();
                parcel2.writeList(c);
                z = true;
                break;
            case 5:
                String d = mo10910d();
                parcel2.writeNoException();
                parcel2.writeString(d);
                z = true;
                break;
            case 6:
                AbstractC2844bu e = mo10909e();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, e);
                z = true;
                break;
            case 7:
                String f = mo10908f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 8:
                String g = mo10907g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                z = true;
                break;
            case 9:
                Bundle h = mo10906h();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, h);
                z = true;
                break;
            case 10:
                mo10905i();
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                eba j = mo10904j();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, j);
                z = true;
                break;
            case 12:
                mo10915a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                boolean b2 = mo10913b((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b2);
                z = true;
                break;
            case 14:
                mo10911c((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                AbstractC2837bn k = mo10903k();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, k);
                z = true;
                break;
            case 16:
                AbstractC2731a l = mo10902l();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, l);
                z = true;
                break;
            case 17:
                String m = mo10901m();
                parcel2.writeNoException();
                parcel2.writeString(m);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
