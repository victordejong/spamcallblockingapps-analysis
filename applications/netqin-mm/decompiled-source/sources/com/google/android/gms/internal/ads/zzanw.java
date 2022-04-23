package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzanw.class */
public final class zzanw extends zzgu implements zzanu {
    public zzanw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: C */
    public final String mo16518C() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: D */
    public final String mo16517D() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: D0 */
    public final float mo16516D0() throws RemoteException {
        Parcel a = m12085a(23, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: J */
    public final boolean mo16515J() throws RemoteException {
        Parcel a = m12085a(17, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: N */
    public final IObjectWrapper mo16514N() throws RemoteException {
        Parcel a = m12085a(14, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: N0 */
    public final float mo16513N0() throws RemoteException {
        Parcel a = m12085a(25, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: R */
    public final IObjectWrapper mo16512R() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: U */
    public final boolean mo16511U() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: a */
    public final void mo16510a(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(22, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: a */
    public final void mo16509a(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        zzgw.m12081a(W, iObjectWrapper3);
        m12084b(21, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: c */
    public final void mo16508c(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(20, W);
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: d */
    public final zzadw mo16507d() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        zzadw a2 = zzadv.m16842a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: e */
    public final String mo16506e() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: f */
    public final String mo16505f() throws RemoteException {
        Parcel a = m12085a(6, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: g */
    public final String mo16504g() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m12085a(16, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final double getStarRating() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    public final float getVideoDuration() throws RemoteException {
        Parcel a = m12085a(24, m12086W());
        float readFloat = a.readFloat();
        a.recycle();
        return readFloat;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: h */
    public final IObjectWrapper mo16503h() throws RemoteException {
        Parcel a = m12085a(15, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: i */
    public final List mo16502i() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: m */
    public final void mo16501m() throws RemoteException {
        m12084b(19, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: q */
    public final zzaee mo16500q() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        zzaee a2 = zzaed.m16834a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzanu
    /* renamed from: s */
    public final String mo16499s() throws RemoteException {
        Parcel a = m12085a(10, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
