package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzze.class */
public final class zzze extends zzgw implements zzzc {
    public zzze(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoController");
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getAspectRatio() throws RemoteException {
        Parcel zza = zza(9, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getCurrentTime() throws RemoteException {
        Parcel zza = zza(7, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final float getDuration() throws RemoteException {
        Parcel zza = zza(6, zzdo());
        float readFloat = zza.readFloat();
        zza.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final int getPlaybackState() throws RemoteException {
        Parcel zza = zza(5, zzdo());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isClickToExpandEnabled() throws RemoteException {
        Parcel zza = zza(12, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isCustomControlsEnabled() throws RemoteException {
        Parcel zza = zza(10, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final boolean isMuted() throws RemoteException {
        Parcel zza = zza(4, zzdo());
        boolean zza2 = zzgx.zza(zza);
        zza.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void mute(boolean z) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.writeBoolean(zzdo, z);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void pause() throws RemoteException {
        zzb(2, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void play() throws RemoteException {
        zzb(1, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void stop() throws RemoteException {
        zzb(13, zzdo());
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final void zza(zzzd zzzdVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzzdVar);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzzc
    public final zzzd zzrg() throws RemoteException {
        zzzf zzzfVar;
        Parcel zza = zza(11, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzzfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
            zzzfVar = queryLocalInterface instanceof zzzd ? (zzzd) queryLocalInterface : new zzzf(readStrongBinder);
        }
        zza.recycle();
        return zzzfVar;
    }
}
