package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbfm.class */
public abstract class zzbfm extends zzadk implements zzbfn {
    public zzbfm() {
        super("com.google.android.gms.ads.internal.client.IAdManager");
    }

    public static zzbfn zzac(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
        return queryLocalInterface instanceof zzbfn ? (zzbfn) queryLocalInterface : new zzbfl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbey zzbeyVar;
        zzbfs zzbfsVar;
        zzbev zzbevVar;
        zzbfy zzbfyVar;
        zzbfp zzbfpVar;
        zzbgu zzbguVar;
        zzbfb zzbfbVar;
        zzbfz zzbfzVar;
        switch (i) {
            case 1:
                IObjectWrapper zzi = zzi();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzi);
                return true;
            case 2:
                zzj();
                parcel2.writeNoException();
                return true;
            case 3:
                boolean zzk = zzk();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzk);
                return true;
            case 4:
                boolean zzl = zzl((zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR));
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzl);
                return true;
            case 5:
                zzm();
                parcel2.writeNoException();
                return true;
            case 6:
                zzn();
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzbeyVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    zzbeyVar = queryLocalInterface instanceof zzbfa ? (zzbfa) queryLocalInterface : new zzbey(readStrongBinder);
                }
                zzo(zzbeyVar);
                parcel2.writeNoException();
                return true;
            case 8:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzbfsVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.IAppEventListener");
                    zzbfsVar = queryLocalInterface2 instanceof zzbfu ? (zzbfu) queryLocalInterface2 : new zzbfs(readStrongBinder2);
                }
                zzp(zzbfsVar);
                parcel2.writeNoException();
                return true;
            case 9:
                zzs();
                parcel2.writeNoException();
                return true;
            case 10:
                parcel2.writeNoException();
                return true;
            case 11:
                zzt();
                parcel2.writeNoException();
                return true;
            case 12:
                zzbdl zzu = zzu();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzu);
                return true;
            case 13:
                zzv((zzbdl) zzadl.zzc(parcel, zzbdl.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zzw(zzbzy.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                zzx(zzcab.zzb(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
            case 17:
            case 27:
            case 28:
            default:
                return false;
            case 18:
                String zzy = zzy();
                parcel2.writeNoException();
                parcel2.writeString(zzy);
                return true;
            case 19:
                zzE(zzbkf.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 20:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 == null) {
                    zzbevVar = null;
                } else {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdClickListener");
                    zzbevVar = queryLocalInterface3 instanceof zzbex ? (zzbex) queryLocalInterface3 : new zzbev(readStrongBinder3);
                }
                zzF(zzbevVar);
                parcel2.writeNoException();
                return true;
            case 21:
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 == null) {
                    zzbfyVar = null;
                } else {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    zzbfyVar = queryLocalInterface4 instanceof zzbfy ? (zzbfy) queryLocalInterface4 : new zzbfy(readStrongBinder4);
                }
                zzab(zzbfyVar);
                parcel2.writeNoException();
                return true;
            case 22:
                zzG(zzadl.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 23:
                boolean zzH = zzH();
                parcel2.writeNoException();
                zzadl.zzb(parcel2, zzH);
                return true;
            case 24:
                zzI(zzcce.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 25:
                zzJ(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 26:
                zzbhc zzL = zzL();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzL);
                return true;
            case 29:
                zzM((zzbis) zzadl.zzc(parcel, zzbis.CREATOR));
                parcel2.writeNoException();
                return true;
            case 30:
                zzN((zzbhg) zzadl.zzc(parcel, zzbhg.CREATOR));
                parcel2.writeNoException();
                return true;
            case 31:
                String zzB = zzB();
                parcel2.writeNoException();
                parcel2.writeString(zzB);
                return true;
            case 32:
                zzbfu zzC = zzC();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzC);
                return true;
            case 33:
                zzbfa zzD = zzD();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzD);
                return true;
            case 34:
                zzQ(zzadl.zza(parcel));
                parcel2.writeNoException();
                return true;
            case 35:
                String zzz = zzz();
                parcel2.writeNoException();
                parcel2.writeString(zzz);
                return true;
            case 36:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 == null) {
                    zzbfpVar = null;
                } else {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdMetadataListener");
                    zzbfpVar = queryLocalInterface5 instanceof zzbfr ? (zzbfr) queryLocalInterface5 : new zzbfp(readStrongBinder5);
                }
                zzq(zzbfpVar);
                parcel2.writeNoException();
                return true;
            case 37:
                Bundle zzr = zzr();
                parcel2.writeNoException();
                zzadl.zze(parcel2, zzr);
                return true;
            case 38:
                zzK(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 39:
                zzO((zzbdr) zzadl.zzc(parcel, zzbdr.CREATOR));
                parcel2.writeNoException();
                return true;
            case 40:
                zzP(zzaxy.zze(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 41:
                zzbgz zzA = zzA();
                parcel2.writeNoException();
                zzadl.zzf(parcel2, zzA);
                return true;
            case 42:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 == null) {
                    zzbguVar = null;
                } else {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.ads.internal.client.IOnPaidEventListener");
                    zzbguVar = queryLocalInterface6 instanceof zzbgw ? (zzbgw) queryLocalInterface6 : new zzbgu(readStrongBinder6);
                }
                zzX(zzbguVar);
                parcel2.writeNoException();
                return true;
            case 43:
                zzbdg zzbdgVar = (zzbdg) zzadl.zzc(parcel, zzbdg.CREATOR);
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 == null) {
                    zzbfbVar = null;
                } else {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoadCallback");
                    zzbfbVar = queryLocalInterface7 instanceof zzbfd ? (zzbfd) queryLocalInterface7 : new zzbfb(readStrongBinder7);
                }
                zzY(zzbdgVar, zzbfbVar);
                parcel2.writeNoException();
                return true;
            case 44:
                zzZ(IObjectWrapper.Stub.m38750m1(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 45:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 == null) {
                    zzbfzVar = null;
                } else {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
                    zzbfzVar = queryLocalInterface8 instanceof zzbgb ? (zzbgb) queryLocalInterface8 : new zzbfz(readStrongBinder8);
                }
                zzaa(zzbfzVar);
                parcel2.writeNoException();
                return true;
        }
    }
}
