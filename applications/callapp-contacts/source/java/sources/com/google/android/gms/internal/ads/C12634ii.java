package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ii */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ii.class */
public final class C12634ii extends dvb implements AbstractC12631if {
    public C12634ii(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12631if
    /* renamed from: a */
    public final void mo14599a(zzaiy zzaiyVar, AbstractC12629id abstractC12629id) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaiyVar);
        dvc.m15676a(zzdp, abstractC12629id);
        zzc(2, zzdp);
    }
}
