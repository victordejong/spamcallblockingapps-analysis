package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.uh */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uh.class */
public final class C12958uh extends dvb implements AbstractC12956uf {
    public C12958uh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14117a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14116a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14115a(AbstractC12126b abstractC12126b, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeInt(i);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: a */
    public final void mo14114a(AbstractC12126b abstractC12126b, zzavy zzavyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzavyVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: b */
    public final void mo14113b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: b */
    public final void mo14112b(AbstractC12126b abstractC12126b, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeInt(i);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: c */
    public final void mo14111c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: d */
    public final void mo14110d(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: e */
    public final void mo14109e(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: f */
    public final void mo14108f(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: g */
    public final void mo14107g(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12956uf
    /* renamed from: h */
    public final void mo14106h(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(11, zzdp);
    }
}
