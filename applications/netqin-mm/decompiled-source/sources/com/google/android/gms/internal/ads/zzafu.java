package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzafu.class */
public final class zzafu extends zzgu implements zzafs {
    public zzafu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IOnPublisherAdViewLoadedListener");
    }

    @Override // com.google.android.gms.internal.ads.zzafs
    /* renamed from: a */
    public final void mo16770a(zzxc zzxcVar, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzxcVar);
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(1, W);
    }
}
