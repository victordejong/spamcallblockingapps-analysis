package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.oh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oh.class */
public final class C12796oh extends dvb implements AbstractC12794of {
    public C12796oh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14304a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14303a(AbstractC12753mt abstractC12753mt) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12753mt);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14302a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12794of
    /* renamed from: a */
    public final void mo14301a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
