package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfi.class */
public abstract class zzbfi extends zzadk implements zzbfj {
    public zzbfi() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbey zzbeyVar;
        zzbfy zzbfyVar;
        switch (i) {
            case 1:
                zzbfg zze = zze();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbeyVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbeyVar = queryLocalInterface instanceof zzbfa ? (zzbfa) queryLocalInterface : new zzbey(readStrongBinder);
                }
                zzf(zzbeyVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzg(zzbne.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zzh(zzbnh.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                zzi(parcel.readString(), zzbnn.zzb(parcel.readStrongBinder()), zzbnk.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zzj((zzblv) zzadl.zzc(parcel, zzblv.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbfyVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzbfyVar = queryLocalInterface2 instanceof zzbfy ? (zzbfy) queryLocalInterface2 : new zzbfy(readStrongBinder2);
                }
                zzq(zzbfyVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzk(zzbnr.zzb(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                zzl((PublisherAdViewOptions) zzadl.zzc(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                zzm(zzbnu.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzn((zzbrx) zzadl.zzc(parcel, zzbrx.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzo(zzbsf.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzp((AdManagerAdViewOptions) zzadl.zzc(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
