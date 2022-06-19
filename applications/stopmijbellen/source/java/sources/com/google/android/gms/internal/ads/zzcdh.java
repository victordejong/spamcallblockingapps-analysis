package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcdh.class */
public abstract class zzcdh extends zzaok implements zzcdi {
    public zzcdh() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzcdk zzcdkVar;
        zzcdk zzcdkVar2;
        zzcdk zzcdkVar3;
        zzcdk zzcdkVar4;
        if (i == 1) {
            zzcdc zzcdcVar = (zzcdc) zzaol.zza(parcel, zzcdc.CREATOR);
            parcel2.writeNoException();
            zzaol.zze(parcel2, null);
            return true;
        } else if (i == 2) {
            zzcdc zzcdcVar2 = (zzcdc) zzaol.zza(parcel, zzcdc.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (queryLocalInterface instanceof zzcdj) {
                    zzcdj zzcdjVar = (zzcdj) queryLocalInterface;
                }
            }
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            zzcdq zzcdqVar = (zzcdq) zzaol.zza(parcel, zzcdq.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                zzcdkVar = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcdkVar = queryLocalInterface2 instanceof zzcdm ? (zzcdm) queryLocalInterface2 : new zzcdk(readStrongBinder2);
            }
            zzg(zzcdqVar, zzcdkVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzcdq zzcdqVar2 = (zzcdq) zzaol.zza(parcel, zzcdq.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 == null) {
                zzcdkVar2 = null;
            } else {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcdkVar2 = queryLocalInterface3 instanceof zzcdm ? (zzcdm) queryLocalInterface3 : new zzcdk(readStrongBinder3);
            }
            zzf(zzcdqVar2, zzcdkVar2);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzcdq zzcdqVar3 = (zzcdq) zzaol.zza(parcel, zzcdq.CREATOR);
            IBinder readStrongBinder4 = parcel.readStrongBinder();
            if (readStrongBinder4 == null) {
                zzcdkVar3 = null;
            } else {
                IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcdkVar3 = queryLocalInterface4 instanceof zzcdm ? (zzcdm) queryLocalInterface4 : new zzcdk(readStrongBinder4);
            }
            zze(zzcdqVar3, zzcdkVar3);
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            String readString = parcel.readString();
            IBinder readStrongBinder5 = parcel.readStrongBinder();
            if (readStrongBinder5 == null) {
                zzcdkVar4 = null;
            } else {
                IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzcdkVar4 = queryLocalInterface5 instanceof zzcdm ? (zzcdm) queryLocalInterface5 : new zzcdk(readStrongBinder5);
            }
            zzh(readString, zzcdkVar4);
            parcel2.writeNoException();
            return true;
        }
    }
}
