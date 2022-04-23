package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bp.class */
public final class bp extends dvb implements bn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public bp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.bn
    public final void a(bm bmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bmVar);
        zzb(1, zzdp);
    }
}
