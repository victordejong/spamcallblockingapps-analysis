package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jb.class */
public final class jb extends dvb implements iz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public jb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void a(b bVar, je jeVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, jeVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final emk b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final void c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.iz
    public final dq d() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        dq a2 = dp.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
