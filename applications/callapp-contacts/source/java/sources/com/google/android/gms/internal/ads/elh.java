package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elh.class */
public final class elh extends dvb implements elf {
    public elh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12428dv zza(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        Parcel zza = zza(5, zzdp);
        AbstractC12428dv m15486a = AbstractBinderC12432dy.m15486a(zza.readStrongBinder());
        zza.recycle();
        return m15486a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12439ed zza(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        Parcel zza = zza(11, zzdp);
        AbstractC12439ed m15293a = AbstractBinderC12438ec.m15293a(zza.readStrongBinder());
        zza.recycle();
        return m15293a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekp zza(AbstractC12126b abstractC12126b, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        ekr ekrVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(3, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            ekrVar = queryLocalInterface instanceof ekp ? (ekp) queryLocalInterface : new ekr(readStrongBinder);
        }
        zza.recycle();
        return ekrVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, int i) throws RemoteException {
        eky ekyVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        zzdp.writeString(str);
        zzdp.writeInt(i);
        Parcel zza = zza(10, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekyVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekyVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zza(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        eky ekyVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekyVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekyVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zza(AbstractC12126b abstractC12126b, int i) throws RemoteException {
        elp elpVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeInt(i);
        Parcel zza = zza(9, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            elpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            elpVar = queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(readStrongBinder);
        }
        zza.recycle();
        return elpVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12942ts zza(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(6, zzdp);
        AbstractC12942ts m14130a = AbstractBinderC12945tv.m14130a(zza.readStrongBinder());
        zza.recycle();
        return m14130a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzb(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        eky ekyVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekyVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekyVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12868qz zzb(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(8, zzdp);
        AbstractC12868qz zzaj = AbstractBinderC12867qy.zzaj(zza.readStrongBinder());
        zza.recycle();
        return zzaj;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12967uq zzb(AbstractC12126b abstractC12126b, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(12, zzdp);
        AbstractC12967uq m14104a = AbstractBinderC12966up.m14104a(zza.readStrongBinder());
        zza.recycle();
        return m14104a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC13048xo zzb(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(14, zzdp);
        AbstractC13048xo m13992a = AbstractBinderC13051xr.m13992a(zza.readStrongBinder());
        zza.recycle();
        return m13992a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final ekw zzc(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        eky ekyVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(13, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            ekyVar = queryLocalInterface instanceof ekw ? (ekw) queryLocalInterface : new eky(readStrongBinder);
        }
        zza.recycle();
        return ekyVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final eln zzc(AbstractC12126b abstractC12126b) throws RemoteException {
        elp elpVar;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(4, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            elpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            elpVar = queryLocalInterface instanceof eln ? (eln) queryLocalInterface : new elp(readStrongBinder);
        }
        zza.recycle();
        return elpVar;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12854ql zzc(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(i);
        Parcel zza = zza(15, zzdp);
        AbstractC12854ql m14231a = AbstractBinderC12857qo.m14231a(zza.readStrongBinder());
        zza.recycle();
        return m14231a;
    }

    @Override // com.google.android.gms.internal.ads.elf
    public final AbstractC12879rj zzd(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(7, zzdp);
        AbstractC12879rj m14211a = BinderC12882rm.m14211a(zza.readStrongBinder());
        zza.recycle();
        return m14211a;
    }
}
