package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ss.class */
public final class ss extends dvb implements sr {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ss(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.sr
    public final void a(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, parcelFileDescriptor);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.sr
    public final void a(zzaq zzaqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaqVar);
        zzb(2, zzdp);
    }
}
