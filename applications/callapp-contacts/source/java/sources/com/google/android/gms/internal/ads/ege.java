package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ege.class */
public final class ege extends dvb implements egc {
    public ege(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15074a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15073a(egb egbVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, egbVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egc
    /* renamed from: a */
    public final void mo15072a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }
}
