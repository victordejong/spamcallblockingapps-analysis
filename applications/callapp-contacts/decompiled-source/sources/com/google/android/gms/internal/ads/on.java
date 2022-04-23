package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/on.class */
public final class on extends dvb implements ol {
    /* JADX INFO: Access modifiers changed from: package-private */
    public on(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(nh nhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, nhVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ol
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
