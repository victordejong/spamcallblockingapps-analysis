package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.kn */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/kn.class */
public abstract class AbstractBinderC3279kn extends dkl implements AbstractC3280ko {
    public AbstractBinderC3279kn() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.ko] */
    /* renamed from: a */
    public static AbstractC3280ko m7664a(IBinder iBinder) {
        C3282kq c3282kq;
        if (iBinder == null) {
            c3282kq = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
            c3282kq = queryLocalInterface instanceof AbstractC3280ko ? (AbstractC3280ko) queryLocalInterface : new C3282kq(iBinder);
        }
        return c3282kq;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 1:
                AbstractC3281kp a = mo7663a(parcel.readString());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, a);
                z = true;
                break;
            case 2:
                boolean b = mo7662b(parcel.readString());
                parcel2.writeNoException();
                dkk.m9321a(parcel2, b);
                z = true;
                break;
            case 3:
                AbstractC3333mn c = mo7661c(parcel.readString());
                parcel2.writeNoException();
                dkk.m9324a(parcel2, c);
                z = true;
                break;
            default:
                z = false;
                break;
        }
        return z;
    }
}
