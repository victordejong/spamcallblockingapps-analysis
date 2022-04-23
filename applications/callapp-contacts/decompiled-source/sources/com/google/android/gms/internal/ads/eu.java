package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eu.class */
public final class eu extends dvb implements es {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.es
    public final void a(eg egVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, egVar);
        zzb(1, zzdp);
    }
}
