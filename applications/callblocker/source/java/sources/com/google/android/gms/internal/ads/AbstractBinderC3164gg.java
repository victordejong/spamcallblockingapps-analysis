package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gg.class */
public abstract class AbstractBinderC3164gg extends dkl implements AbstractC3161gd {
    public AbstractBinderC3164gg() {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.gd] */
    /* renamed from: a */
    public static AbstractC3161gd m7816a(IBinder iBinder) {
        C3163gf c3163gf;
        if (iBinder == null) {
            c3163gf = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
            c3163gf = queryLocalInterface instanceof AbstractC3161gd ? (AbstractC3161gd) queryLocalInterface : new C3163gf(iBinder);
        }
        return c3163gf;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        switch (i) {
            case 2:
                mo7818a();
                parcel2.writeNoException();
                z = true;
                break;
            case 3:
                mo7817a(parcel.readString());
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
