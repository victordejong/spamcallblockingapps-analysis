package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbod.class */
public final class zzbod extends zzaoj implements zzbof {
    public zzbod(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zze() throws RemoteException {
        Parcel zzbs = zzbs(2, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zzf() throws RemoteException {
        Parcel zzbs = zzbs(6, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final float zzg() throws RemoteException {
        Parcel zzbs = zzbs(5, zza());
        float readFloat = zzbs.readFloat();
        zzbs.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final zzbiz zzh() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final IObjectWrapper zzi() throws RemoteException {
        return C0033h.m8887j(zzbs(4, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zzj(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(3, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final boolean zzk() throws RemoteException {
        Parcel zzbs = zzbs(8, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbof
    public final void zzl(zzbpq zzbpqVar) throws RemoteException {
        throw null;
    }
}
