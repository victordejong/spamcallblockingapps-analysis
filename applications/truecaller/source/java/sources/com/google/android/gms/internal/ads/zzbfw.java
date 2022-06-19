package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfw.class */
public abstract class zzbfw extends zzadk implements zzbfx {
    public zzbfw() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                zzbfn zzb = zzb(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR), parcel.readString(), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzb);
                return true;
            case 2:
                zzbfn zzc = zzc(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR), parcel.readString(), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzc);
                return true;
            case 3:
                zzbfj zzd = zzd(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readString(), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzd);
                return true;
            case 4:
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 5:
                zzbml zze = zze(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zze);
                return true;
            case 6:
                zzccc zzf = zzf(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzf);
                return true;
            case 7:
                IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, null);
                return true;
            case 8:
                zzbzq zzg = zzg(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzg);
                return true;
            case 9:
                zzbge zzh = zzh(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzh);
                return true;
            case 10:
                zzbfn zzi = zzi(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzi);
                return true;
            case 11:
                zzbmr zzj = zzj(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzj);
                return true;
            case 12:
                zzccs zzk = zzk(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), parcel.readString(), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzk);
                return true;
            case 13:
                zzbfn zzl = zzl(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), (zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR), parcel.readString(), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzl);
                return true;
            case 14:
                zzcfn zzm = zzm(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzm);
                return true;
            case 15:
                zzbze zzn = zzn(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzn);
                return true;
            case 16:
                zzbqp zzo = zzo(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()), zzbvf.zzg(parcel.readStrongBinder()), parcel.readInt(), zzbql.zzc(parcel.readStrongBinder()));
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzo);
                return true;
            default:
                return false;
        }
    }
}
