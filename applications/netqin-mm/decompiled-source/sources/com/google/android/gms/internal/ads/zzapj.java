package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapj.class */
public final class zzapj extends zzgu implements zzaph {
    public zzapj(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: L */
    public final boolean mo16483L(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(17, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: V */
    public final zzapv mo16482V() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        zzapv zzapvVar = (zzapv) zzgw.m12080a(a, zzapv.CREATOR);
        a.recycle();
        return zzapvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16481a(IObjectWrapper iObjectWrapper, String str, Bundle bundle, Bundle bundle2, zzvn zzvnVar, zzapm zzapmVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        zzgw.m12079a(W, bundle);
        zzgw.m12079a(W, bundle2);
        zzgw.m12079a(W, zzvnVar);
        zzgw.m12081a(W, zzapmVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16476a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzaov zzaovVar, zzanh zzanhVar, zzvn zzvnVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzaovVar);
        zzgw.m12081a(W, zzanhVar);
        zzgw.m12079a(W, zzvnVar);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16475a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapa zzapaVar, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzapaVar);
        zzgw.m12081a(W, zzanhVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16474a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapb zzapbVar, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzapbVar);
        zzgw.m12081a(W, zzanhVar);
        m12084b(18, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16473a(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapg zzapgVar, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzapgVar);
        zzgw.m12081a(W, zzanhVar);
        m12084b(16, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: a */
    public final void mo16472a(String[] strArr, Bundle[] bundleArr) throws RemoteException {
        Parcel W = m12086W();
        W.writeStringArray(strArr);
        W.writeTypedArray(bundleArr, 0);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: b */
    public final void mo16471b(String str, String str2, zzvg zzvgVar, IObjectWrapper iObjectWrapper, zzapg zzapgVar, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzapgVar);
        zzgw.m12081a(W, zzanhVar);
        m12084b(20, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: d0 */
    public final zzapv mo16468d0() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        zzapv zzapvVar = (zzapv) zzgw.m12080a(a, zzapv.CREATOR);
        a.recycle();
        return zzapvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: n */
    public final void mo16467n(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: p */
    public final boolean mo16466p(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(15, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaph
    /* renamed from: t */
    public final void mo16465t(String str) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        m12084b(19, W);
    }
}
