package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jh.class */
public final class jh extends dvb implements jf {
    /* JADX INFO: Access modifiers changed from: package-private */
    public jh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(iz izVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, izVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.jf
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }
}
