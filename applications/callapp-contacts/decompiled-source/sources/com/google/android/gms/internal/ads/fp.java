package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fp.class */
public final class fp extends dvb implements fn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public fp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    @Override // com.google.android.gms.internal.ads.fn
    public final boolean a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(2, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
