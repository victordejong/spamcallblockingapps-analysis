package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p007a6.C0033h;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpa.class */
public final class zzbpa extends zzaoj implements zzbpc {
    public zzbpa(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzbiz zze() throws RemoteException {
        Parcel zzbs = zzbs(7, zza());
        zzbiz zzb = zzbiy.zzb(zzbs.readStrongBinder());
        zzbs.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final zzboi zzf(String str) throws RemoteException {
        zzbog zzbogVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(2, zza);
        IBinder readStrongBinder = zzbs.readStrongBinder();
        if (readStrongBinder == null) {
            zzbogVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbogVar = queryLocalInterface instanceof zzboi ? (zzboi) queryLocalInterface : new zzbog(readStrongBinder);
        }
        zzbs.recycle();
        return zzbogVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final IObjectWrapper zzg() throws RemoteException {
        return C0033h.m8887j(zzbs(9, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final String zzh() throws RemoteException {
        Parcel zzbs = zzbs(4, zza());
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final String zzi(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbs = zzbs(1, zza);
        String readString = zzbs.readString();
        zzbs.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final List<String> zzj() throws RemoteException {
        Parcel zzbs = zzbs(3, zza());
        ArrayList<String> createStringArrayList = zzbs.createStringArrayList();
        zzbs.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzk() throws RemoteException {
        zzbt(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzl() throws RemoteException {
        zzbt(15, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzm(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbt(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzn() throws RemoteException {
        zzbt(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final void zzo(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        zzbt(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzp() throws RemoteException {
        Parcel zzbs = zzbs(12, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzaol.zzf(zza, iObjectWrapper);
        Parcel zzbs = zzbs(10, zza);
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzbpc
    public final boolean zzr() throws RemoteException {
        Parcel zzbs = zzbs(13, zza());
        boolean zzg = zzaol.zzg(zzbs);
        zzbs.recycle();
        return zzg;
    }
}
