package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fk.class */
public abstract class fk extends dvd implements fh {
    public fk() {
        super("com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            return false;
        }
        a(ekv.zzc(parcel.readStrongBinder()), b.a.a(parcel.readStrongBinder()));
        parcel2.writeNoException();
        return true;
    }
}
