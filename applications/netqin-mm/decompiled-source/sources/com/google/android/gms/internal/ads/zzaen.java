package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaen.class */
public final class zzaen extends zzgu implements zzael {
    public zzaen(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: O1 */
    public final void mo10922O1() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: b */
    public final void mo10921b(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzael
    /* renamed from: d */
    public final void mo10920d(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(3, W);
    }
}
