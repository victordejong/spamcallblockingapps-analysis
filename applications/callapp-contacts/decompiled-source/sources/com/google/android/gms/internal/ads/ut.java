package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ut.class */
public final class ut extends dvb implements ur {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ut(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(ul ulVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ulVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.ur
    public final void c() throws RemoteException {
        zzb(6, zzdp());
    }
}
