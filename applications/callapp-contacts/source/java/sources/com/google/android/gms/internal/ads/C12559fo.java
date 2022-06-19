package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.fo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fo.class */
public final class C12559fo extends dvb implements AbstractC12557fm {
    public C12559fo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12557fm
    /* renamed from: a */
    public final void mo14237a(AbstractC12564ft abstractC12564ft) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12564ft);
        zzb(1, zzdp);
    }
}
