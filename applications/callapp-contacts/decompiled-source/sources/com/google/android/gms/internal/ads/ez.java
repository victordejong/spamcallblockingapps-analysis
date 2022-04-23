package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ez.class */
public final class ez extends dvb implements ex {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ez(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.ex
    public final void a(ek ekVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekVar);
        zzb(1, zzdp);
    }
}
