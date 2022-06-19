package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dvh.class */
public abstract class dvh extends dkl implements dve {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [com.google.android.gms.internal.ads.dve] */
    /* renamed from: a */
    public static dve m8510a(IBinder iBinder) {
        dvg dvgVar;
        if (iBinder == null) {
            dvgVar = null;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
            dvgVar = queryLocalInterface instanceof dve ? (dve) queryLocalInterface : new dvg(iBinder);
        }
        return dvgVar;
    }

    @Override // com.google.android.gms.internal.ads.dkl
    /* renamed from: a */
    protected final boolean mo6844a(int i, Parcel parcel, Parcel parcel2, int i2) {
        boolean z;
        dvf dvfVar;
        switch (i) {
            case 1:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    dvfVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                    dvfVar = queryLocalInterface instanceof dvd ? (dvd) queryLocalInterface : new dvf(readStrongBinder);
                }
                mo8511a(dvfVar);
                parcel2.writeNoException();
                z = true;
                break;
            case 2:
                mo8512a(parcel.readInt());
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
