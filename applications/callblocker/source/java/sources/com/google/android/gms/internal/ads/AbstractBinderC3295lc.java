package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lc */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lc.class */
public abstract class AbstractBinderC3295lc extends dkl implements AbstractC3296ld {
    public AbstractBinderC3295lc() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                String a = mo7556a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 3:
                List b = mo7553b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                z = true;
                break;
            case 4:
                String c = mo7551c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 5:
                AbstractC2844bu d = mo7549d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 6:
                String e = mo7548e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                z = true;
                break;
            case 7:
                String f = mo7547f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 8:
                mo7546g();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7555a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7552b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                boolean h = mo7545h();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, h);
                z = true;
                break;
            case 12:
                boolean i3 = mo7544i();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, i3);
                z = true;
                break;
            case 13:
                Bundle j = mo7543j();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, j);
                z = true;
                break;
            case 14:
                mo7550c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 15:
                AbstractC2731a k = mo7542k();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, k);
                z = true;
                break;
            case 16:
                eba l = mo7541l();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, l);
                z = true;
                break;
            case 17:
            case 18:
            default:
                z = false;
                break;
            case 19:
                AbstractC2837bn m = mo7540m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 20:
                AbstractC2731a n = mo7539n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 21:
                AbstractC2731a o = mo7538o();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, o);
                z = true;
                break;
            case 22:
                mo7554a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
        }
        return z;
    }
}
