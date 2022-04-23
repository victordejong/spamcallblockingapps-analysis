package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/nd.class */
public final class nd extends dvb implements nb {
    /* JADX INFO: Access modifiers changed from: package-private */
    public nd(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void a(b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        dvc.a(zzdp, bVar3);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final List b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        ArrayList b2 = dvc.b(zza);
        zza.recycle();
        return b2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final dr d() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        dr a2 = du.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String e() throws RemoteException {
        Parcel zza = zza(6, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final double f() throws RemoteException {
        Parcel zza = zza(7, zzdp());
        double readDouble = zza.readDouble();
        zza.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String g() throws RemoteException {
        Parcel zza = zza(8, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final String h() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final void i() throws RemoteException {
        zzb(10, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final boolean j() throws RemoteException {
        Parcel zza = zza(13, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final boolean k() throws RemoteException {
        Parcel zza = zza(14, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final Bundle l() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        Bundle bundle = (Bundle) dvc.a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final emk m() throws RemoteException {
        Parcel zza = zza(17, zzdp());
        emk a2 = emn.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b n() throws RemoteException {
        Parcel zza = zza(18, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final dj o() throws RemoteException {
        Parcel zza = zza(19, zzdp());
        dj a2 = dm.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b p() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.nb
    public final b q() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
