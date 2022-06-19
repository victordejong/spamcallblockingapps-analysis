package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.va */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/va.class */
public final class C12978va extends dvb implements AbstractC12975uy {
    public C12978va(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14073a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14072a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12975uy
    /* renamed from: a */
    public final void mo14071a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }
}
