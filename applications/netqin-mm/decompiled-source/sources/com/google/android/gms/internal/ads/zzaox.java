package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaox.class */
public final class zzaox extends zzgu implements zzaov {
    public zzaox(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: a */
    public final void mo16498a(zzva zzvaVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvaVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: b */
    public final void mo16497b(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaov
    /* renamed from: t */
    public final void mo16496t(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(1, W);
    }
}
