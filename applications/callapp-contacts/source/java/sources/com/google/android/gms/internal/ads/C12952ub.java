package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ub */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ub.class */
public final class C12952ub extends dvb implements AbstractC12949tz {
    public C12952ub(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14128a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14127a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: a */
    public final void mo14126a(AbstractC12939tp abstractC12939tp) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12939tp);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: b */
    public final void mo14125b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: c */
    public final void mo14124c() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: d */
    public final void mo14123d() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: e */
    public final void mo14122e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12949tz
    /* renamed from: f */
    public final void mo14121f() throws RemoteException {
        zzb(8, zzdp());
    }
}
