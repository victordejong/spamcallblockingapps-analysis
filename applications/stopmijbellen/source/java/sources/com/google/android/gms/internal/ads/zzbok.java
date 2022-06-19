package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbok.class */
public final class zzbok extends zzaoj implements zzbom {
    public zzbok(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final IObjectWrapper zzb(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        return C0033h.m8887j(zzbs(2, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbE(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(1, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbF(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbG(zzbof zzbofVar) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, zzbofVar);
        zzbt(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbH(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(9, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzbI(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzc() throws RemoteException {
        zzbt(4, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zzd(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(7, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbom
    public final void zze(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zza.writeInt(i);
        zzbt(5, zza);
    }
}
