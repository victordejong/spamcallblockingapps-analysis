package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oz.class */
public final class oz extends dvb implements ox {
    /* JADX INFO: Access modifiers changed from: package-private */
    public oz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.ISignalsCallback");
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ox
    public final void b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
