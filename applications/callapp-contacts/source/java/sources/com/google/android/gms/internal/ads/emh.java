package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emh.class */
public abstract class emh extends dvd implements emd {
    public emh() {
        super("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    /* renamed from: a */
    public static emd m14785a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
        return queryLocalInterface instanceof emd ? (emd) queryLocalInterface : new emf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14203a((zzvv) dvc.m15675a(parcel, zzvv.CREATOR));
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
