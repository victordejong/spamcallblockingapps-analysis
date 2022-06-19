package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ev */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ev.class */
public abstract class AbstractBinderC12539ev extends dvd implements AbstractC12536es {
    public AbstractBinderC12539ev() {
        super("com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12525ei c12525ei;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12525ei = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
                c12525ei = queryLocalInterface instanceof AbstractC12442eg ? (AbstractC12442eg) queryLocalInterface : new C12525ei(readStrongBinder);
            }
            mo14641a(c12525ei);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
