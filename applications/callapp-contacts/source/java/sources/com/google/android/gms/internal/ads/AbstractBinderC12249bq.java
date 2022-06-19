package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.bq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bq.class */
public abstract class AbstractBinderC12249bq extends dvd implements AbstractC12246bn {
    public AbstractBinderC12249bq() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12247bo c12247bo;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12247bo = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
                c12247bo = queryLocalInterface instanceof AbstractC12245bm ? (AbstractC12245bm) queryLocalInterface : new C12247bo(readStrongBinder);
            }
            mo17625a(c12247bo);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
