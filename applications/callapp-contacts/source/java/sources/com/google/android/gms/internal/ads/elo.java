package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elo.class */
public final class elo extends dvb implements elm {
    public elo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: a */
    public final void mo14808a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: a */
    public final void mo14807a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: b */
    public final void mo14806b() throws RemoteException {
        zzb(3, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.elm
    /* renamed from: c */
    public final void mo14805c() throws RemoteException {
        zzb(4, zzdp());
    }
}
