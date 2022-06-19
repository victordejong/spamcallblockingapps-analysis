package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/emq.class */
public final class emq extends dvb implements emp {
    public emq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: a */
    public final void mo14054a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: a */
    public final void mo14053a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: b */
    public final void mo14052b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: c */
    public final void mo14051c() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.emp
    /* renamed from: d */
    public final void mo14050d() throws RemoteException {
        zzb(4, zzdp());
    }
}
