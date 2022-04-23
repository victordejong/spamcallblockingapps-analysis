package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egk.class */
public final class egk extends dvb implements egi {
    /* JADX INFO: Access modifiers changed from: package-private */
    public egk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.egi
    public final void c() throws RemoteException {
        zzb(4, zzdp());
    }
}
