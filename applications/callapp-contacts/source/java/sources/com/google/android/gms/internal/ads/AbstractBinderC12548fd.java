package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fd */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fd.class */
public abstract class AbstractBinderC12548fd extends dvd implements AbstractC12549fe {
    public AbstractBinderC12548fd() {
        super("com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12534eq c12534eq;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12534eq = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
                c12534eq = queryLocalInterface instanceof AbstractC12532eo ? (AbstractC12532eo) queryLocalInterface : new C12534eq(readStrongBinder);
            }
            mo14239a(c12534eq);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
