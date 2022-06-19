package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchu.class */
public final class zzchu extends zzaoj implements zzchw {
    public zzchu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzchw
    public final zzcht zze(IObjectWrapper iObjectWrapper, zzbxh zzbxhVar, int i) throws RemoteException {
        zzchr zzchrVar;
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzaol.zzf(zza, zzbxhVar);
        zza.writeInt(214106000);
        Parcel zzbs = zzbs(2, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzchrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            zzchrVar = queryLocalInterface instanceof zzcht ? (zzcht) queryLocalInterface : new zzchr(readStrongBinder);
        }
        zzbs.recycle();
        return zzchrVar;
    }
}
