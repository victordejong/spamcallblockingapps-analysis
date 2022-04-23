package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mu.class */
public final class mu extends dvb implements ms {
    /* JADX INFO: Access modifiers changed from: package-private */
    public mu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(int i, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzdp.writeString(str);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(eo eoVar, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eoVar);
        zzdp.writeString(str);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(my myVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, myVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(ul ulVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ulVar);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(zzavy zzavyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzavyVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(23, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void a(String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(24, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void d() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void f() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void g() throws RemoteException {
        zzb(11, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void h() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void i() throws RemoteException {
        zzb(15, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void j() throws RemoteException {
        zzb(18, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ms
    public final void k() throws RemoteException {
        zzb(20, zzdp());
    }
}
