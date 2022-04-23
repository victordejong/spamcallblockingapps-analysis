package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafn.class */
public final class zzafn extends zzgu implements zzafl {
    public zzafn(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnCustomTemplateAdLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafl
    /* renamed from: a */
    public final void mo16802a(zzafa zzafaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafaVar);
        m12084b(1, W);
    }
}
