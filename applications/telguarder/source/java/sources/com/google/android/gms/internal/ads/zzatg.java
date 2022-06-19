package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzatg.class */
public abstract class zzatg extends zzgy implements zzath {
    public zzatg() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzatl zzatlVar;
        zzatm zzatmVar;
        zzatm zzatmVar2;
        zzatm zzatmVar3;
        zzatm zzatmVar4;
        if (i == 1) {
            zzatd zza = zza((zzatb) zzgx.zza(parcel, zzatb.CREATOR));
            parcel2.writeNoException();
            zzgx.zzb(parcel2, zza);
            return true;
        } else if (i == 2) {
            zzatb zzatbVar = (zzatb) zzgx.zza(parcel, zzatb.CREATOR);
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzatlVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                zzatlVar = queryLocalInterface instanceof zzati ? (zzati) queryLocalInterface : new zzatl(readStrongBinder);
            }
            zza(zzatbVar, zzatlVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            zzatq zzatqVar = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                zzatmVar = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzatmVar = queryLocalInterface2 instanceof zzatk ? (zzatk) queryLocalInterface2 : new zzatm(readStrongBinder2);
            }
            zza(zzatqVar, zzatmVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzatq zzatqVar2 = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
            IBinder readStrongBinder3 = parcel.readStrongBinder();
            if (readStrongBinder3 == null) {
                zzatmVar2 = null;
            } else {
                IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzatmVar2 = queryLocalInterface3 instanceof zzatk ? (zzatk) queryLocalInterface3 : new zzatm(readStrongBinder3);
            }
            zzb(zzatqVar2, zzatmVar2);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzatq zzatqVar3 = (zzatq) zzgx.zza(parcel, zzatq.CREATOR);
            IBinder readStrongBinder4 = parcel.readStrongBinder();
            if (readStrongBinder4 == null) {
                zzatmVar3 = null;
            } else {
                IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzatmVar3 = queryLocalInterface4 instanceof zzatk ? (zzatk) queryLocalInterface4 : new zzatm(readStrongBinder4);
            }
            zzc(zzatqVar3, zzatmVar3);
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            String readString = parcel.readString();
            IBinder readStrongBinder5 = parcel.readStrongBinder();
            if (readStrongBinder5 == null) {
                zzatmVar4 = null;
            } else {
                IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                zzatmVar4 = queryLocalInterface5 instanceof zzatk ? (zzatk) queryLocalInterface5 : new zzatm(readStrongBinder5);
            }
            zza(readString, zzatmVar4);
            parcel2.writeNoException();
            return true;
        }
    }
}
