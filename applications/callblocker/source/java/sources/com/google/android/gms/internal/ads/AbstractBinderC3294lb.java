package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lb */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lb.class */
public abstract class AbstractBinderC3294lb extends dkl implements AbstractC3289kx {
    public AbstractBinderC3294lb() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                String a = mo7612a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 3:
                List b = mo7609b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                z = true;
                break;
            case 4:
                String c = mo7607c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 5:
                AbstractC2844bu d = mo7605d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 6:
                String e = mo7604e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                z = true;
                break;
            case 7:
                double f = mo7603f();
                parcel2.writeNoException();
                parcel2.writeDouble(f);
                z = true;
                break;
            case 8:
                String g = mo7602g();
                parcel2.writeNoException();
                parcel2.writeString(g);
                z = true;
                break;
            case 9:
                String h = mo7601h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                z = true;
                break;
            case 10:
                mo7600i();
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                mo7611a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 12:
                mo7608b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                boolean j = mo7599j();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, j);
                z = true;
                break;
            case 14:
                boolean k = mo7598k();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, k);
                z = true;
                break;
            case 15:
                Bundle l = mo7597l();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, l);
                z = true;
                break;
            case 16:
                mo7606c(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 17:
                eba m = mo7596m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 18:
                AbstractC2731a n = mo7595n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 19:
                AbstractC2837bn o = mo7594o();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, o);
                z = true;
                break;
            case 20:
                AbstractC2731a p = mo7593p();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, p);
                z = true;
                break;
            case 21:
                AbstractC2731a q = mo7592q();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, q);
                z = true;
                break;
            case 22:
                mo7610a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
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
