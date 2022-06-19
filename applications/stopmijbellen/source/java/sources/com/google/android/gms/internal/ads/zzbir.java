package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbir.class */
public final class zzbir extends zzaoj implements zzbit {
    public zzbir(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzbit
    public final void zze(zzbfk zzbfkVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzd(zza, zzbfkVar);
        zzbt(1, zza);
    }
}
