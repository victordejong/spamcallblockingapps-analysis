package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafg.class */
public final class zzafg extends zzgu implements zzafe {
    public zzafg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnAppInstallAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    /* renamed from: a */
    public final void mo16772a(zzaes zzaesVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzaesVar);
        m12084b(1, W);
    }
}
