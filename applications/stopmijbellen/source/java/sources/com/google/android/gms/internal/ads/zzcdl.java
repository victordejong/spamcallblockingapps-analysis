package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzbd;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdl.class */
public abstract class zzcdl extends zzaok implements zzcdm {
    public zzcdl() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzf((ParcelFileDescriptor) zzaol.zza(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            zze((zzbd) zzaol.zza(parcel, zzbd.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
