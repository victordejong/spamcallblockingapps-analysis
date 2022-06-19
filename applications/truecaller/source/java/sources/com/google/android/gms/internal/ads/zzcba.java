package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcba.class */
public abstract class zzcba extends zzadk implements zzcbb {
    public zzcba() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzadk
    public final boolean zzbz(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcbd zzcbdVar;
        zzcbd zzcbdVar2;
        zzcbd zzcbdVar3;
        zzcbd zzcbdVar4;
        if (i == 1) {
            zzcav zzcavVar = (zzcav) zzadl.zzc(parcel, zzcav.CREATOR);
            parcel2.writeNoException();
            zzadl.zze(parcel2, null);
            return true;
        } else if (i == 2) {
            zzcav zzcavVar2 = (zzcav) zzadl.zzc(parcel, zzcav.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (queryLocalInterface instanceof zzcbc) {
                    zzcbc zzcbcVar = (zzcbc) queryLocalInterface;
                } else {
                    new zzcbc(readStrongBinder);
                }
            }
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            zzcbj zzcbjVar = (zzcbj) zzadl.zzc(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                zzcbdVar = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcbdVar = queryLocalInterface2 instanceof zzcbf ? (zzcbf) queryLocalInterface2 : new zzcbd(readStrongBinder2);
            }
            zze(zzcbjVar, zzcbdVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzcbj zzcbjVar2 = (zzcbj) zzadl.zzc(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 == null) {
                zzcbdVar2 = null;
            } else {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcbdVar2 = queryLocalInterface3 instanceof zzcbf ? (zzcbf) queryLocalInterface3 : new zzcbd(readStrongBinder3);
            }
            zzf(zzcbjVar2, zzcbdVar2);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzcbj zzcbjVar3 = (zzcbj) zzadl.zzc(parcel, zzcbj.CREATOR);
            IBinder readStrongBinder4 = parcel.readStrongBinder();
            if (readStrongBinder4 == null) {
                zzcbdVar3 = null;
            } else {
                IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcbdVar3 = queryLocalInterface4 instanceof zzcbf ? (zzcbf) queryLocalInterface4 : new zzcbd(readStrongBinder4);
            }
            zzg(zzcbjVar3, zzcbdVar3);
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            String readString = parcel.readString();
            IBinder readStrongBinder5 = parcel.readStrongBinder();
            if (readStrongBinder5 == null) {
                zzcbdVar4 = null;
            } else {
                IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcbdVar4 = queryLocalInterface5 instanceof zzcbf ? (zzcbf) queryLocalInterface5 : new zzcbd(readStrongBinder5);
            }
            zzh(readString, zzcbdVar4);
            parcel2.writeNoException();
            return true;
        }
    }
}
