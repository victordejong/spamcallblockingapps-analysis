package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmz.class */
public final class zzbmz extends zzadj implements zzbnb {
    public zzbmz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final String zze(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(1, zza);
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final zzbmh zzf(String str) throws RemoteException {
        zzbmf zzbmfVar;
        Parcel zza = zza();
        zza.writeString(str);
        Parcel zzbi = zzbi(2, zza);
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbmfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzbmfVar = queryLocalInterface instanceof zzbmh ? (zzbmh) queryLocalInterface : new zzbmf(readStrongBinder);
        }
        zzbi.recycle();
        return zzbmfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final List<String> zzg() throws RemoteException {
        Parcel zzbi = zzbi(3, zza());
        ArrayList<String> createStringArrayList = zzbi.createStringArrayList();
        zzbi.recycle();
        return createStringArrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final String zzh() throws RemoteException {
        Parcel zzbi = zzbi(4, zza());
        String readString = zzbi.readString();
        zzbi.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzi(String str) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzj() throws RemoteException {
        zzbj(6, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final zzbhc zzk() throws RemoteException {
        Parcel zzbi = zzbi(7, zza());
        zzbhc zzb = zzbhb.zzb(zzbi.readStrongBinder());
        zzbi.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzl() throws RemoteException {
        zzbj(8, zza());
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final IObjectWrapper zzm() throws RemoteException {
        return C22128a.m8608j1(zzbi(9, zza()));
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzn(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        Parcel zzbi = zzbi(10, zza);
        boolean zza2 = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza2;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzo() throws RemoteException {
        Parcel zzbi = zzbi(12, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final boolean zzp() throws RemoteException {
        Parcel zzbi = zzbi(13, zza());
        boolean zza = zzadl.zza(zzbi);
        zzbi.recycle();
        return zza;
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzq(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, iObjectWrapper);
        zzbj(14, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbnb
    public final void zzr() throws RemoteException {
        zzbj(15, zza());
    }
}
