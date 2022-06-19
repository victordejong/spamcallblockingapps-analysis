package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbhf.class */
public abstract class zzbhf extends zzaok implements zzbhg {
    public zzbhf() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbgv zzbgvVar;
        zzbhv zzbhvVar;
        switch (i) {
            case 1:
                zzbhd zze = zze();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zze);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbgvVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbgvVar = queryLocalInterface instanceof zzbgx ? (zzbgx) queryLocalInterface : new zzbgv(readStrongBinder);
                }
                zzl(zzbgvVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zzf(zzbpf.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zzg(zzbpi.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                zzh(parcel.readString(), zzbpo.zzb(parcel.readStrongBinder()), zzbpl.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zzo((zzbnw) zzaol.zza(parcel, zzbnw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbhvVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzbhvVar = queryLocalInterface2 instanceof zzbhv ? (zzbhv) queryLocalInterface2 : new zzbhv(readStrongBinder2);
                }
                zzq(zzbhvVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zzj(zzbps.zzb(parcel.readStrongBinder()), (zzbfi) zzaol.zza(parcel, zzbfi.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                zzp((PublisherAdViewOptions) zzaol.zza(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                zzk(zzbpv.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zzn((zzbtz) zzaol.zza(parcel, zzbtz.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzi(zzbuh.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzm((AdManagerAdViewOptions) zzaol.zza(parcel, AdManagerAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
        }
    }
}
