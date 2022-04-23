package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeb.class */
public final class zzaeb extends zzgu implements zzadz {
    public zzaeb(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.IMediaContent");
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: I0 */
    public final boolean mo14772I0() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: X */
    public final float mo14769X() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: a */
    public final void mo14768a(zzafq zzafqVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzafqVar);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final float getDuration() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: i0 */
    public final float mo14767i0() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: j */
    public final void mo14766j(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzadz
    /* renamed from: l1 */
    public final IObjectWrapper mo14765l1() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
