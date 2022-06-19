package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* renamed from: com.google.android.gms.internal.ads.gy */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/gy.class */
public abstract class AbstractBinderC3182gy extends dkl implements AbstractC3179gv {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.gv] */
    /* renamed from: a */
    public static AbstractC3179gv m7804a(IBinder iBinder) {
        C3181gx c3181gx;
        if (iBinder == null) {
            c3181gx = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
            c3181gx = queryLocalInterface instanceof AbstractC3179gv ? (AbstractC3179gv) queryLocalInterface : new C3181gx(iBinder);
        }
        return c3181gx;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        C3175gr c3175gr;
        switch (i) {
            case 1:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c3175gr = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                    c3175gr = queryLocalInterface instanceof AbstractC3173gp ? (AbstractC3173gp) queryLocalInterface : new C3175gr(readStrongBinder);
                }
                mo7805a(c3175gr);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo7806a(parcel.readInt());
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
