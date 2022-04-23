package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fo.class */
public final class fo extends dvb implements fm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.fm
    public final void a(ft ftVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ftVar);
        zzb(1, zzdp);
    }
}
