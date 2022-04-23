package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaek.class */
public final class zzaek extends zzgu implements zzaei {
    public zzaek(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10919a(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeInt(i);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10918a(zzadz zzadzVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzadzVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: a */
    public final void mo10917a(String str, IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: b */
    public final void mo10916b(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: d */
    public final void mo10915d(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    public final void destroy() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: h */
    public final void mo10914h(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: j */
    public final IObjectWrapper mo10913j(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        Parcel a = m12085a(2, W);
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaei
    /* renamed from: u */
    public final void mo10912u(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(9, W);
    }
}
