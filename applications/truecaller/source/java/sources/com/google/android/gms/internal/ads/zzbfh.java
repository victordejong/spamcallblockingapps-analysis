package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfh.class */
public final class zzbfh extends zzadj implements zzbfj {
    public zzbfh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final zzbfg zze() throws RemoteException {
        zzbfe zzbfeVar;
        Parcel zzbi = zzbi(1, zza());
        IBinder readStrongBinder = zzbi.readStrongBinder();
        if (readStrongBinder == null) {
            zzbfeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzbfeVar = queryLocalInterface instanceof zzbfg ? (zzbfg) queryLocalInterface : new zzbfe(readStrongBinder);
        }
        zzbi.recycle();
        return zzbfeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzf(zzbfa zzbfaVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbfaVar);
        zzbj(2, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzg(zzbnf zzbnfVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzh(zzbni zzbniVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzi(String str, zzbno zzbnoVar, zzbnl zzbnlVar) throws RemoteException {
        Parcel zza = zza();
        zza.writeString(str);
        zzadl.zzf(zza, zzbnoVar);
        zzadl.zzf(zza, zzbnlVar);
        zzbj(5, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzj(zzblv zzblvVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, zzblvVar);
        zzbj(6, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzk(zzbns zzbnsVar, zzbdl zzbdlVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbnsVar);
        zzadl.zzd(zza, zzbdlVar);
        zzbj(8, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzl(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzm(zzbnv zzbnvVar) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzf(zza, zzbnvVar);
        zzbj(10, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzn(zzbrx zzbrxVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzo(zzbsg zzbsgVar) throws RemoteException {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzp(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zza = zza();
        zzadl.zzd(zza, adManagerAdViewOptions);
        zzbj(15, zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbfj
    public final void zzq(zzbfy zzbfyVar) throws RemoteException {
        throw null;
    }
}
