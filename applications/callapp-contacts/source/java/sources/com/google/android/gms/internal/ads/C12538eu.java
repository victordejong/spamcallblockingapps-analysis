package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.eu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/eu.class */
public final class C12538eu extends dvb implements AbstractC12536es {
    public C12538eu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12536es
    /* renamed from: a */
    public final void mo14641a(AbstractC12442eg abstractC12442eg) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12442eg);
        zzb(1, zzdp);
    }
}
