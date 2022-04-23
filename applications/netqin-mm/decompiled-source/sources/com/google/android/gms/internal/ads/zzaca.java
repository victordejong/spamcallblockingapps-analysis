package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaca.class */
public final class zzaca extends zzgu implements zzaby {
    public zzaca(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaby
    /* renamed from: a */
    public final void mo16874a(zzabt zzabtVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzabtVar);
        m12084b(1, W);
    }
}
