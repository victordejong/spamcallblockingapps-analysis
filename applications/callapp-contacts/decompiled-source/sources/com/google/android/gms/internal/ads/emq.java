package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emq.class */
public final class emq extends dvb implements emp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public emq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, z);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void c() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    public final void d() throws RemoteException {
        zzb(4, zzdp());
    }
}
