package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanq.class */
public final class zzanq extends zzgu implements zzano {
    public zzanq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: D */
    public final String mo16579D() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: J */
    public final boolean mo16578J() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: N */
    public final IObjectWrapper mo16577N() throws RemoteException {
        Parcel a = m12085a(20, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: R */
    public final IObjectWrapper mo16576R() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: U */
    public final boolean mo16575U() throws RemoteException {
        Parcel a = m12085a(14, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: a */
    public final void mo16574a(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(16, W);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: a */
    public final void mo16573a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        zzgw.m12081a(W, iObjectWrapper3);
        m12084b(22, W);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: c */
    public final void mo16572c(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: d */
    public final zzadw mo16571d() throws RemoteException {
        Parcel a = m12085a(19, m12086W());
        zzadw a2 = zzadv.m16842a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: e */
    public final String mo16570e() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: e */
    public final void mo16569e(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(12, W);
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: f */
    public final String mo16568f() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: g */
    public final String mo16567g() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m12085a(15, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final double getStarRating() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(17, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: h */
    public final IObjectWrapper mo16566h() throws RemoteException {
        Parcel a = m12085a(21, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: i */
    public final List mo16565i() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: m */
    public final void mo16564m() throws RemoteException {
        m12084b(10, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: q */
    public final zzaee mo16563q() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        zzaee a2 = zzaed.m16834a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzano
    /* renamed from: s */
    public final String mo16562s() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
