package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sq.class */
public abstract class sq extends dvd implements sr {
    public sq() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            a((ParcelFileDescriptor) dvc.a(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            a((zzaq) dvc.a(parcel, zzaq.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
