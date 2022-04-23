package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ii.class */
public final class ii extends dvb implements AbstractC0760if {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ii(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC0760if
    public final void a(zzaiy zzaiyVar, id idVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaiyVar);
        dvc.a(zzdp, idVar);
        zzc(2, zzdp);
    }
}
