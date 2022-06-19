package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzafu.class */
public final class zzafu extends zzgw implements zzafs {
    public zzafu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnContentAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafs
    public final void zza(zzafj zzafjVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafjVar);
        zzb(1, zzdo);
    }
}
