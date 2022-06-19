package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ji */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ji.class */
public abstract class AbstractBinderC12661ji extends dvd implements AbstractC12658jf {
    public AbstractBinderC12661ji() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12654jb c12654jb;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12654jb = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
                c12654jb = queryLocalInterface instanceof AbstractC12651iz ? (AbstractC12651iz) queryLocalInterface : new C12654jb(readStrongBinder);
            }
            mo14579a(c12654jb);
        } else if (i == 2) {
            mo14580a(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            mo14578a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
