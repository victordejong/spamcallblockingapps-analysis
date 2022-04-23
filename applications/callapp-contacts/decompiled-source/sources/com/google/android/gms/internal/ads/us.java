package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/us.class */
public final class us extends dvb implements uq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public us(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final Bundle a() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(b bVar, boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, z);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emc emcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, emcVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, emdVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(ur urVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, urVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(uz uzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, uzVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzaww zzawwVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzawwVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(zzvq zzvqVar, uy uyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, uyVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final void b(zzvq zzvqVar, uy uyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        dvc.a(zzdp, uyVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final boolean b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final ul d() throws RemoteException {
        ul ulVar;
        Parcel zza = zza(11, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ulVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            ulVar = queryLocalInterface instanceof ul ? (ul) queryLocalInterface : new un(readStrongBinder);
        }
        zza.recycle();
        return ulVar;
    }

    @Override // com.google.android.gms.internal.ads.uq
    public final emj e() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        emj a2 = emi.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
