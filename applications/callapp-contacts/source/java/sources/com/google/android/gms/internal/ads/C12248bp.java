package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.bp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bp.class */
public final class C12248bp extends dvb implements AbstractC12246bn {
    public C12248bp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12246bn
    /* renamed from: a */
    public final void mo17625a(AbstractC12245bm abstractC12245bm) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12245bm);
        zzb(1, zzdp);
    }
}
