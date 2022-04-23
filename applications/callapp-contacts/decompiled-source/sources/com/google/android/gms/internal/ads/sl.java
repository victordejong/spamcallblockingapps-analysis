package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sl.class */
public final class sl extends dvb implements sj {
    /* JADX INFO: Access modifiers changed from: package-private */
    public sl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final zzats a(zzatq zzatqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzatqVar);
        Parcel zza = zza(1, zzdp);
        zzats zzatsVar = (zzats) dvc.a(zza, zzats.CREATOR);
        zza.recycle();
        return zzatsVar;
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(zzatq zzatqVar, sp spVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzatqVar);
        dvc.a(zzdp, spVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(zzauj zzaujVar, sr srVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaujVar);
        dvc.a(zzdp, srVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void a(String str, sr srVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, srVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void b(zzauj zzaujVar, sr srVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaujVar);
        dvc.a(zzdp, srVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.sj
    public final void c(zzauj zzaujVar, sr srVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaujVar);
        dvc.a(zzdp, srVar);
        zzb(6, zzdp);
    }
}
