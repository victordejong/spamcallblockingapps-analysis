package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.nx */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/nx.class */
public abstract class AbstractBinderC3370nx extends dkl implements AbstractC3371ny {
    public AbstractBinderC3370nx() {
        super("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ny] */
    /* renamed from: a */
    public static AbstractC3371ny m7384a(IBinder iBinder) {
        C3374oa c3374oa;
        if (iBinder == null) {
            c3374oa = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            c3374oa = queryLocalInterface instanceof AbstractC3371ny ? (AbstractC3371ny) queryLocalInterface : new C3374oa(iBinder);
        }
        return c3374oa;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                mo7376a((Bundle) dkk.m9323a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7371f();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7370g();
                parcel2.writeNoException();
                z = true;
                break;
            case 4:
                mo7369h();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                mo7368i();
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                Bundle bundle = (Bundle) dkk.m9323a(parcel, Bundle.CREATOR);
                mo7374b(bundle);
                parcel2.writeNoException();
                dkk.m9319b(parcel2, bundle);
                z = true;
                break;
            case 7:
                mo7367j();
                parcel2.writeNoException();
                z = true;
                break;
            case 8:
                mo7366k();
                parcel2.writeNoException();
                z = true;
                break;
            case 9:
                mo7365l();
                parcel2.writeNoException();
                z = true;
                break;
            case 10:
                mo7373d();
                parcel2.writeNoException();
                z = true;
                break;
            case 11:
                boolean e = mo7372e();
                parcel2.writeNoException();
                dkk.m9321a(parcel2, e);
                z = true;
                break;
            case 12:
                mo7377a(parcel.readInt(), parcel.readInt(), (Intent) dkk.m9323a(parcel, Intent.CREATOR));
                parcel2.writeNoException();
                z = true;
                break;
            case 13:
                mo7375a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
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
