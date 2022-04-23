package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elh.class */
public final class elh extends dvb implements elf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final dv zza(b bVar, b bVar2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        Parcel zza = zza(5, zzdp);
        dv a2 = dy.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ed zza(b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        dvc.a(zzdp, bVar3);
        Parcel zza = zza(11, zzdp);
        ed a2 = ec.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekp zza(b bVar, String str, mm mmVar, int i) throws RemoteException {
        ekp ekpVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(3, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            ekpVar = queryLocalInterface instanceof ekp ? (ekp) queryLocalInterface : new ekr(readStrongBinder);
        }
        zza.recycle();
        return ekpVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(b bVar, zzvt zzvtVar, String str, int i) throws RemoteException {
        ekw ekwVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        zzdp.writeString(str);
        zzdp.writeInt(i);
        Parcel zza = zza(10, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekwVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekwVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) throws RemoteException {
        ekw ekwVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekwVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekwVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zza(b bVar, int i) throws RemoteException {
        eln elnVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeInt(i);
        Parcel zza = zza(9, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            elnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            elnVar = queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(readStrongBinder);
        }
        zza.recycle();
        return elnVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ts zza(b bVar, mm mmVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(6, zzdp);
        ts a2 = tv.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzb(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) throws RemoteException {
        ekw ekwVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekwVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekwVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final qz zzb(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(8, zzdp);
        qz zzaj = qy.zzaj(zza.readStrongBinder());
        zza.recycle();
        return zzaj;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final uq zzb(b bVar, String str, mm mmVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(12, zzdp);
        uq a2 = up.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final xo zzb(b bVar, mm mmVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(14, zzdp);
        xo a2 = xr.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzc(b bVar, zzvt zzvtVar, String str, mm mmVar, int i) throws RemoteException {
        ekw ekwVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(13, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekwVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekwVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zzc(b bVar) throws RemoteException {
        eln elnVar;
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(4, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            elnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            elnVar = queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(readStrongBinder);
        }
        zza.recycle();
        return elnVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ql zzc(b bVar, mm mmVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, mmVar);
        zzdp.writeInt(i);
        Parcel zza = zza(15, zzdp);
        ql a2 = qo.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final rj zzd(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(7, zzdp);
        rj a2 = rm.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
