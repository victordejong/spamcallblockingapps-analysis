package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.fj */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/fj.class */
public final class C12554fj extends dvb implements AbstractC12552fh {
    public C12554fj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12552fh
    /* renamed from: a */
    public final void mo14640a(ekw ekwVar, AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekwVar);
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(1, zzdp);
    }
}
