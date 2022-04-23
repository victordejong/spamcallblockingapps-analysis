package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fj.class */
public final class fj extends dvb implements fh {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.fh
    public final void a(ekw ekwVar, b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekwVar);
        dvc.a(zzdp, bVar);
        zzb(1, zzdp);
    }
}
