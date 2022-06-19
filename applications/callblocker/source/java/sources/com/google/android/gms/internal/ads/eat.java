package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eat.class */
public abstract class eat extends dkl implements eau {
    public eat() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eau] */
    /* renamed from: a */
    public static eau m8096a(IBinder iBinder) {
        eaw eawVar;
        if (iBinder == null) {
            eawVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
            eawVar = queryLocalInterface instanceof eau ? (eau) queryLocalInterface : new eaw(iBinder);
        }
        return eawVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        if (i == 1) {
            mo7912a((dyf) dkk.m9323a(parcel, dyf.CREATOR));
            parcel2.writeNoException();
            z = true;
        } else {
            z = false;
        }
        return z;
    }
}
