package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/eak.class */
public abstract class eak extends dkl implements eah {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.eah] */
    /* renamed from: a */
    public static eah m8101a(IBinder iBinder) {
        eaj eajVar;
        if (iBinder == null) {
            eajVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMuteThisAdListener");
            eajVar = queryLocalInterface instanceof eah ? (eah) queryLocalInterface : new eaj(iBinder);
        }
        return eajVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z = true;
        if (i == 1) {
            mo8102a();
            parcel2.writeNoException();
        } else {
            z = false;
        }
        return z;
    }
}
