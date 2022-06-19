package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.om */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/om.class */
public final class C12801om extends dvb implements AbstractC12799ok {
    public C12801om(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IInterstitialCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12799ok
    /* renamed from: a */
    public final void mo14300a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12799ok
    /* renamed from: a */
    public final void mo14299a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12799ok
    /* renamed from: a */
    public final void mo14298a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(3, zzdp);
    }
}
