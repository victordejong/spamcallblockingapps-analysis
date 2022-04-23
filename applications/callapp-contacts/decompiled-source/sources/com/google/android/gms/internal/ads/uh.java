package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uh.class */
public final class uh extends dvb implements uf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public uh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bundle);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void a(b bVar, zzavy zzavyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzavyVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void b(b bVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeInt(i);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void d(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void e(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void f(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void g(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.uf
    public final void h(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(11, zzdp);
    }
}
