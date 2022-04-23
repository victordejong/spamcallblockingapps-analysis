package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ot.class */
public final class ot extends dvb implements oq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ot(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.oq
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }
}
