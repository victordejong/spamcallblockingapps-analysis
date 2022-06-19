package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/egk.class */
public final class egk extends dvb implements egi {
    public egk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: a */
    public final void mo15070a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: a */
    public final void mo15069a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: b */
    public final void mo15068b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.egi
    /* renamed from: c */
    public final void mo15067c() throws RemoteException {
        zzb(4, zzdp());
    }
}
