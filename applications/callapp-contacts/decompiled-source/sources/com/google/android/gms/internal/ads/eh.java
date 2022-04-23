package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eh.class */
public final class eh extends dvb implements ee {
    /* JADX INFO: Access modifiers changed from: package-private */
    public eh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.ee
    public final IBinder a(b bVar, b bVar2, b bVar3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        dvc.a(zzdp, bVar3);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
