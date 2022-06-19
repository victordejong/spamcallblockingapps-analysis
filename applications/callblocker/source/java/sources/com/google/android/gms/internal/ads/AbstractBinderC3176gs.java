package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC2731a;
/* renamed from: com.google.android.gms.internal.ads.gs */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gs.class */
public abstract class AbstractBinderC3176gs extends dkl implements AbstractC3173gp {
    public AbstractBinderC3176gs() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        C3180gw c3180gw;
        boolean z;
        switch (i) {
            case 3:
                eba b = mo7811b();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, b);
                z = true;
                break;
            case 4:
                mo7810c();
                parcel2.writeNoException();
                z = true;
                break;
            case 5:
                AbstractC2731a m13796a = AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder());
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3180gw = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                    c3180gw = queryLocalInterface instanceof AbstractC3178gu ? (AbstractC3178gu) queryLocalInterface : new C3180gw(readStrongBinder);
                }
                mo7812a(m13796a, c3180gw);
                parcel2.writeNoException();
                z = true;
                break;
            case 6:
                mo7813a(AbstractC2731a.BinderC2732a.m13796a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                z = true;
                break;
            case 7:
                AbstractC2843bt d = mo7809d();
                parcel2.writeNoException();
                dkk.m9324a(parcel2, d);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
