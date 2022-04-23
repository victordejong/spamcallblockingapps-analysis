package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxr.class */
public final class zzxr extends zzgu implements zzxp {
    public zzxr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: H */
    public final zzarn mo11139H(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(7, W);
        zzarn a2 = zzarm.m16395a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: M */
    public final zzxs mo11138M(IObjectWrapper iObjectWrapper) throws RemoteException {
        zzxs zzxsVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(4, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzxsVar = queryLocalInterface instanceof zzxs ? (zzxs) queryLocalInterface : new zzxu(readStrongBinder);
        }
        a.recycle();
        return zzxsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzaqp mo11137a(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(15, W);
        zzaqp a2 = zzaqs.m16420a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzwz mo11134a(IObjectWrapper iObjectWrapper, String str, zzanb zzanbVar, int i) throws RemoteException {
        zzwz zzwzVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(3, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzwzVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            zzwzVar = queryLocalInterface instanceof zzwz ? (zzwz) queryLocalInterface : new zzxb(readStrongBinder);
        }
        a.recycle();
        return zzwzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzxc mo11136a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, int i) throws RemoteException {
        zzxc zzxcVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        W.writeString(str);
        W.writeInt(i);
        Parcel a = m12085a(10, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxcVar = queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(readStrongBinder);
        }
        a.recycle();
        return zzxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: a */
    public final zzxc mo11135a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) throws RemoteException {
        zzxc zzxcVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(13, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxcVar = queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(readStrongBinder);
        }
        a.recycle();
        return zzxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzael mo11133b(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        zzgw.m12081a(W, iObjectWrapper3);
        Parcel a = m12085a(11, W);
        zzael a2 = zzaeo.m16829a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzauy mo11130b(IObjectWrapper iObjectWrapper, String str, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(12, W);
        zzauy a2 = zzavb.m16301a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzaxl mo11132b(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(14, W);
        zzaxl a2 = zzaxk.m16214a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: b */
    public final zzxc mo11131b(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) throws RemoteException {
        zzxc zzxcVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(1, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxcVar = queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(readStrongBinder);
        }
        a.recycle();
        return zzxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: c */
    public final zzaud mo11129c(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(6, W);
        zzaud a2 = zzauc.m16341a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: c */
    public final zzxc mo11128c(IObjectWrapper iObjectWrapper, zzvn zzvnVar, String str, zzanb zzanbVar, int i) throws RemoteException {
        zzxc zzxcVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(2, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxcVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            zzxcVar = queryLocalInterface instanceof zzxc ? (zzxc) queryLocalInterface : new zzxe(readStrongBinder);
        }
        a.recycle();
        return zzxcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: d */
    public final zzaei mo11126d(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, iObjectWrapper2);
        Parcel a = m12085a(5, W);
        zzaei a2 = zzaeh.m16831a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: d */
    public final zzxs mo11127d(IObjectWrapper iObjectWrapper, int i) throws RemoteException {
        zzxs zzxsVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        W.writeInt(i);
        Parcel a = m12085a(9, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzxsVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            zzxsVar = queryLocalInterface instanceof zzxs ? (zzxs) queryLocalInterface : new zzxu(readStrongBinder);
        }
        a.recycle();
        return zzxsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzxp
    /* renamed from: f */
    public final zzaqy mo11125f(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        Parcel a = m12085a(8, W);
        zzaqy a2 = zzarb.m16401a(a.readStrongBinder());
        a.recycle();
        return a2;
    }
}
