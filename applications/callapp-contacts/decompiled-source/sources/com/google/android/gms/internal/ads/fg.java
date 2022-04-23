package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fg.class */
public final class fg extends dvb implements fe {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.fe
    public final void a(eo eoVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, eoVar);
        zzb(1, zzdp);
    }
}
