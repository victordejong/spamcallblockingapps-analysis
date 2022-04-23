package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaut.class */
public final class zzaut extends zzgu implements zzaur {
    public zzaut(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: D */
    public final void mo13850D(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: J */
    public final void mo13849J(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(5, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: N */
    public final void mo13848N(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: a */
    public final void mo13847a(IObjectWrapper iObjectWrapper, zzauv zzauvVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzauvVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: b */
    public final void mo13844b(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeInt(i);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: c */
    public final void mo13843c(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(12, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: c */
    public final void mo13842c(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeInt(i);
        m12084b(9, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: i */
    public final void mo13841i(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: k */
    public final void mo13840k(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(4, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: o */
    public final void mo13839o(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: v */
    public final void mo13838v(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaur
    /* renamed from: y */
    public final void mo13837y(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(8, W);
    }
}
