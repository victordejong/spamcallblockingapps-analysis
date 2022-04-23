package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwl.class */
public final class cwl extends dvb implements cwm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public cwl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.gass.internal.IGassService");
    }

    @Override // com.google.android.gms.internal.ads.cwm
    public final zzdwj a(zzdwh zzdwhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzdwhVar);
        Parcel zza = zza(1, zzdp);
        zzdwj zzdwjVar = (zzdwj) dvc.a(zza, zzdwj.CREATOR);
        zza.recycle();
        return zzdwjVar;
    }

    @Override // com.google.android.gms.internal.ads.cwm
    public final zzdwt a(zzdwr zzdwrVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzdwrVar);
        Parcel zza = zza(3, zzdp);
        zzdwt zzdwtVar = (zzdwt) dvc.a(zza, zzdwt.CREATOR);
        zza.recycle();
        return zzdwtVar;
    }

    @Override // com.google.android.gms.internal.ads.cwm
    public final void a(zzdwc zzdwcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzdwcVar);
        zzb(2, zzdp);
    }
}
