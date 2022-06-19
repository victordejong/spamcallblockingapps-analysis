package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ew */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ew.class */
public abstract class AbstractBinderC12540ew extends dvd implements AbstractC12541ex {
    public AbstractBinderC12540ew() {
        super("com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12529em c12529em;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12529em = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
                c12529em = queryLocalInterface instanceof AbstractC12527ek ? (AbstractC12527ek) queryLocalInterface : new C12529em(readStrongBinder);
            }
            mo14638a(c12529em);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
