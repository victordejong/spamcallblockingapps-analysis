package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ot */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ot.class */
public final class C12808ot extends dvb implements AbstractC12805oq {
    public C12808ot(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12805oq
    /* renamed from: a */
    public final void mo14294a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12805oq
    /* renamed from: a */
    public final void mo14293a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12805oq
    /* renamed from: a */
    public final void mo14292a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }
}
