package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaeu.class */
public final class zzaeu extends zzgu implements zzaes {
    public zzaeu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: D */
    public final String mo14253D() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: a */
    public final String mo14252a() throws RemoteException {
        Parcel a = m12085a(19, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: a */
    public final void mo14251a(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: b */
    public final boolean mo14250b(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        Parcel a = m12085a(15, W);
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: d */
    public final zzadw mo14249d() throws RemoteException {
        zzadw zzadwVar;
        Parcel a = m12085a(17, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzadwVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
            zzadwVar = queryLocalInterface instanceof zzadw ? (zzadw) queryLocalInterface : new zzady(readStrongBinder);
        }
        a.recycle();
        return zzadwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final void destroy() throws RemoteException {
        m12084b(12, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: e */
    public final String mo14248e() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: e */
    public final void mo14247e(Bundle bundle) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, bundle);
        m12084b(16, W);
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: f */
    public final String mo14246f() throws RemoteException {
        Parcel a = m12085a(7, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: g */
    public final String mo14245g() throws RemoteException {
        Parcel a = m12085a(5, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final Bundle getExtras() throws RemoteException {
        Parcel a = m12085a(11, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final double getStarRating() throws RemoteException {
        Parcel a = m12085a(8, m12086W());
        double readDouble = a.readDouble();
        a.recycle();
        return readDouble;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: h */
    public final IObjectWrapper mo14244h() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: i */
    public final List mo14243i() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        ArrayList b = zzgw.m12077b(a);
        a.recycle();
        return b;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: q */
    public final zzaee mo14242q() throws RemoteException {
        zzaee zzaeeVar;
        Parcel a = m12085a(6, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzaeeVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
            zzaeeVar = queryLocalInterface instanceof zzaee ? (zzaee) queryLocalInterface : new zzaeg(readStrongBinder);
        }
        a.recycle();
        return zzaeeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: s */
    public final String mo14241s() throws RemoteException {
        Parcel a = m12085a(10, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaes
    /* renamed from: v */
    public final IObjectWrapper mo14240v() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
