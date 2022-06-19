package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.lh */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/lh.class */
public abstract class AbstractBinderC3300lh extends dkl implements AbstractC3297le {
    public AbstractBinderC3300lh() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.le] */
    /* renamed from: a */
    public static AbstractC3297le m7659a(IBinder iBinder) {
        C3299lg c3299lg;
        if (iBinder == null) {
            c3299lg = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            c3299lg = queryLocalInterface instanceof AbstractC3297le ? (AbstractC3297le) queryLocalInterface : new C3299lg(iBinder);
        }
        return c3299lg;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                String a = mo7495a();
                parcel2.writeNoException();
                parcel2.writeString(a);
                z = true;
                break;
            case 3:
                List b = mo7492b();
                parcel2.writeNoException();
                parcel2.writeList(b);
                z = true;
                break;
            case 4:
                String c = mo7490c();
                parcel2.writeNoException();
                parcel2.writeString(c);
                z = true;
                break;
            case 5:
                AbstractC2844bu d = mo7489d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            case 6:
                String e = mo7488e();
                parcel2.writeNoException();
                parcel2.writeString(e);
                z = true;
                break;
            case 7:
                String f = mo7487f();
                parcel2.writeNoException();
                parcel2.writeString(f);
                z = true;
                break;
            case 8:
                double g = mo7486g();
                parcel2.writeNoException();
                parcel2.writeDouble(g);
                z = true;
                break;
            case 9:
                String h = mo7485h();
                parcel2.writeNoException();
                parcel2.writeString(h);
                z = true;
                break;
            case 10:
                String i3 = mo7484i();
                parcel2.writeNoException();
                parcel2.writeString(i3);
                z = true;
                break;
            case 11:
                eba j = mo7483j();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, j);
                z = true;
                break;
            case 12:
                AbstractC2837bn k = mo7482k();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, k);
                z = true;
                break;
            case 13:
                AbstractC2731a l = mo7481l();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, l);
                z = true;
                break;
            case 14:
                AbstractC2731a m = mo7480m();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, m);
                z = true;
                break;
            case 15:
                AbstractC2731a n = mo7479n();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, n);
                z = true;
                break;
            case 16:
                Bundle o = mo7478o();
                parcel2.writeNoException();
                dkk.m9319b(parcel2, o);
                z = true;
                break;
            case 17:
                boolean p = mo7477p();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, p);
                z = true;
                break;
            case 18:
                boolean q = mo7476q();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, q);
                z = true;
                break;
            case 19:
                mo7475r();
                parcel2.writeNoException();
                z = true;
                break;
            case 20:
                mo7494a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 21:
                mo7493a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()), AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 22:
                mo7491b(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 23:
                float s = mo7474s();
                parcel2.writeNoException();
                parcel2.writeFloat(s);
                z = true;
                break;
            case 24:
                float t = mo7473t();
                parcel2.writeNoException();
                parcel2.writeFloat(t);
                z = true;
                break;
            case 25:
                float u = mo7472u();
                parcel2.writeNoException();
                parcel2.writeFloat(u);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
