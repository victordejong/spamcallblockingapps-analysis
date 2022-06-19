package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmc.class */
public final class zzbmc extends zzadj implements zzbme {
    public zzbmc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zze() throws RemoteException {
        Parcel zzbi = zzbi(2, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final IObjectWrapper zzg() throws RemoteException {
        return C22128a.m8608j1(zzbi(4, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zzh() throws RemoteException {
        Parcel zzbi = zzbi(5, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final float zzi() throws RemoteException {
        Parcel zzbi = zzbi(6, zza());
        float readFloat = zzbi.readFloat();
        zzbi.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final zzbhc zzj() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final boolean zzk() throws RemoteException {
        Parcel zzbi = zzbi(8, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbme
    public final void zzl(zzbnp zzbnpVar) throws RemoteException {
        throw null;
    }
}
