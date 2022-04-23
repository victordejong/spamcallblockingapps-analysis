package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzajg.class */
public final class zzajg extends zzgu implements zzaje {
    public zzajg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: B */
    public final void mo14261B(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: a */
    public final void mo14257a(IObjectWrapper iObjectWrapper, zzajf zzajfVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzajfVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    public final void destroy() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaje
    /* renamed from: u0 */
    public final zzadz mo14254u0() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        zzadz a2 = zzaec.m16835a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
