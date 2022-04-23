package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaui.class */
public final class zzaui extends zzgu implements zzaug {
    public zzaui(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: H */
    public final void mo16336H() throws RemoteException {
        m12084b(3, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: a */
    public final void mo16335a(zzatw zzatwVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzatwVar);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: c */
    public final void mo16334c(int i) throws RemoteException {
        Parcel W = m12086W();
        W.writeInt(i);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: g0 */
    public final void mo16333g0() throws RemoteException {
        m12084b(6, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: n0 */
    public final void mo16332n0() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: o0 */
    public final void mo16331o0() throws RemoteException {
        m12084b(2, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    public final void onRewardedVideoCompleted() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaug
    /* renamed from: q0 */
    public final void mo16330q0() throws RemoteException {
        m12084b(1, m12086W());
    }
}
