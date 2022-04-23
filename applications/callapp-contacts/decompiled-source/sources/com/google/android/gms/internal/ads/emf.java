package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emf.class */
public final class emf extends dvb implements emd {
    /* JADX INFO: Access modifiers changed from: package-private */
    public emf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IOnPaidEventListener");
    }

    @Override // com.google.android.gms.internal.ads.emd
    public final void a(zzvv zzvvVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvvVar);
        zzb(1, zzdp);
    }
}
