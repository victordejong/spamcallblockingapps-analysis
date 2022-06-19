package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatn.class */
public abstract class zzatn extends zzgy implements zzatk {
    public zzatn() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzb((ParcelFileDescriptor) zzgx.zza(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zza((zzaq) zzgx.zza(parcel, zzaq.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
