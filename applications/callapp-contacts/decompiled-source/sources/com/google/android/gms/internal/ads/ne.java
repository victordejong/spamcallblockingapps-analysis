package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ne.class */
public final class ne extends dvb implements nc {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ne(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void a(b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        dvc.a(zzdp, bVar3);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final List b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final dr d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        dr a2 = du.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final String f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final void g() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final boolean h() throws RemoteException {
        Parcel zza = zza(11, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final boolean i() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final Bundle j() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b k() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final emk l() throws RemoteException {
        Parcel zza = zza(16, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final dj m() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        dj a2 = dm.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b n() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nc
    public final b o() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
