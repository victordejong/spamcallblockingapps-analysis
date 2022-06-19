package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fl.class */
public abstract class AbstractBinderC12556fl extends dvd implements AbstractC12557fm {
    public AbstractBinderC12556fl() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12566fv c12566fv;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12566fv = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                c12566fv = queryLocalInterface instanceof AbstractC12564ft ? (AbstractC12564ft) queryLocalInterface : new C12566fv(readStrongBinder);
            }
            mo14237a(c12566fv);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
