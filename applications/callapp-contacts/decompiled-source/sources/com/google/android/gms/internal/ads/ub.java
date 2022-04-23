package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ub.class */
public final class ub extends dvb implements tz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ub(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void a(tp tpVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, tpVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void c() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void d() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.tz
    public final void f() throws RemoteException {
        zzb(8, zzdp());
    }
}
