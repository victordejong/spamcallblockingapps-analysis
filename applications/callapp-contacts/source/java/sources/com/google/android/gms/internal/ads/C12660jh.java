package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.jh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jh.class */
public final class C12660jh extends dvb implements AbstractC12658jf {
    public C12660jh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14580a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14579a(AbstractC12651iz abstractC12651iz) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12651iz);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12658jf
    /* renamed from: a */
    public final void mo14578a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }
}
