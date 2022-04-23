package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elo.class */
public final class elo extends dvb implements elm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void b() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.elm
    public final void c() throws RemoteException {
        zzb(4, zzdp());
    }
}
