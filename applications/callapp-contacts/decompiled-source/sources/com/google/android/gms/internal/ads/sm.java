package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sm.class */
public abstract class sm extends dvd implements sj {
    public sm() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 1) {
            sr srVar = null;
            sr srVar2 = null;
            sr srVar3 = null;
            sp spVar = null;
            sr srVar4 = null;
            if (i == 2) {
                zzatq zzatqVar = (zzatq) dvc.a(parcel, zzatq.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    spVar = queryLocalInterface instanceof sp ? (sp) queryLocalInterface : new so(readStrongBinder);
                }
                a(zzatqVar, spVar);
                parcel2.writeNoException();
                return true;
            } else if (i == 4) {
                zzauj zzaujVar = (zzauj) dvc.a(parcel, zzauj.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    srVar3 = queryLocalInterface2 instanceof sr ? (sr) queryLocalInterface2 : new ss(readStrongBinder2);
                }
                a(zzaujVar, srVar3);
                parcel2.writeNoException();
                return true;
            } else if (i == 5) {
                zzauj zzaujVar2 = (zzauj) dvc.a(parcel, zzauj.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    srVar2 = queryLocalInterface3 instanceof sr ? (sr) queryLocalInterface3 : new ss(readStrongBinder3);
                }
                b(zzaujVar2, srVar2);
                parcel2.writeNoException();
                return true;
            } else if (i == 6) {
                zzauj zzaujVar3 = (zzauj) dvc.a(parcel, zzauj.CREATOR);
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    srVar = queryLocalInterface4 instanceof sr ? (sr) queryLocalInterface4 : new ss(readStrongBinder4);
                }
                c(zzaujVar3, srVar);
                parcel2.writeNoException();
                return true;
            } else if (i != 7) {
                return false;
            } else {
                String readString = parcel.readString();
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    srVar4 = queryLocalInterface5 instanceof sr ? (sr) queryLocalInterface5 : new ss(readStrongBinder5);
                }
                a(readString, srVar4);
                parcel2.writeNoException();
                return true;
            }
        } else {
            zzats a2 = a((zzatq) dvc.a(parcel, zzatq.CREATOR));
            parcel2.writeNoException();
            dvc.b(parcel2, a2);
            return true;
        }
    }
}
