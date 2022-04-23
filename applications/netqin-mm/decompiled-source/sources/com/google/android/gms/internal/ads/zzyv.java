package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyv.class */
public final class zzyv extends zzgu implements zzyt {
    public zzyv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    /* renamed from: a0 */
    public final void mo11100a0() throws RemoteException {
        m12084b(3, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    /* renamed from: d */
    public final void mo11099d(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    /* renamed from: h0 */
    public final void mo11098h0() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    /* renamed from: j0 */
    public final void mo11097j0() throws RemoteException {
        m12084b(1, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzyt
    /* renamed from: m0 */
    public final void mo11096m0() throws RemoteException {
        m12084b(2, m12086W());
    }
}
