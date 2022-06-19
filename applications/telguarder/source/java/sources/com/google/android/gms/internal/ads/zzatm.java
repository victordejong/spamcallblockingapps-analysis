package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatm.class */
public final class zzatm extends zzgw implements zzatk {
    public zzatm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zza(zzaq zzaqVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaqVar);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, parcelFileDescriptor);
        zzb(1, zzdo);
    }
}
