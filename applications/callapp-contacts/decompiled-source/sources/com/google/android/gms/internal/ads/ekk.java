package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekk.class */
public final class ekk extends dvb implements eki {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ekk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void b() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void d() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.eki
    public final void f() throws RemoteException {
        zzb(7, zzdp());
    }
}
