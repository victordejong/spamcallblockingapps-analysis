package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzani.class */
public final class zzani extends zzgu implements zzang {
    public zzani(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: C0 */
    public final zzafa mo16560C0() throws RemoteException {
        Parcel a = m12085a(24, m12086W());
        zzafa a2 = zzaez.m16809a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: F1 */
    public final IObjectWrapper mo16559F1() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        IObjectWrapper a2 = IObjectWrapper.Stub.m17022a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: K */
    public final void mo16558K(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(30, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: R0 */
    public final boolean mo16557R0() throws RemoteException {
        Parcel a = m12085a(22, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: V */
    public final zzapv mo16556V() throws RemoteException {
        Parcel a = m12085a(34, m12086W());
        zzapv zzapvVar = (zzapv) zzgw.m12080a(a, zzapv.CREATOR);
        a.recycle();
        return zzapvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16555a(IObjectWrapper iObjectWrapper, zzais zzaisVar, List<zzaja> list) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzaisVar);
        W.writeTypedList(list);
        m12084b(31, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16554a(IObjectWrapper iObjectWrapper, zzaur zzaurVar, List<String> list) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzaurVar);
        W.writeStringList(list);
        m12084b(23, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16553a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanhVar);
        m12084b(28, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16552a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzaur zzaurVar, String str2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        zzgw.m12081a(W, zzaurVar);
        W.writeString(str2);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16551a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12081a(W, zzanhVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16550a(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, String str2, zzanh zzanhVar, zzadu zzaduVar, List<String> list) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12081a(W, zzanhVar);
        zzgw.m12079a(W, zzaduVar);
        W.writeStringList(list);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16549a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanhVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16548a(IObjectWrapper iObjectWrapper, zzvn zzvnVar, zzvg zzvgVar, String str, String str2, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvnVar);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        W.writeString(str2);
        zzgw.m12081a(W, zzanhVar);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16547a(zzvg zzvgVar, String str) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        m12084b(11, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16546a(zzvg zzvgVar, String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        W.writeString(str2);
        m12084b(20, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: a */
    public final void mo16545a(boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12078a(W, z);
        m12084b(25, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: b */
    public final void mo16544b(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanhVar);
        m12084b(32, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c */
    public final void mo16543c(IObjectWrapper iObjectWrapper, zzvg zzvgVar, String str, zzanh zzanhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12079a(W, zzvgVar);
        W.writeString(str);
        zzgw.m12081a(W, zzanhVar);
        m12084b(3, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: c2 */
    public final zzanu mo16541c2() throws RemoteException {
        zzanu zzanuVar;
        Parcel a = m12085a(27, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzanuVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
            zzanuVar = queryLocalInterface instanceof zzanu ? (zzanu) queryLocalInterface : new zzanw(readStrongBinder);
        }
        a.recycle();
        return zzanuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: d0 */
    public final zzapv mo16540d0() throws RemoteException {
        Parcel a = m12085a(33, m12086W());
        zzapv zzapvVar = (zzapv) zzgw.m12080a(a, zzapv.CREATOR);
        a.recycle();
        return zzapvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void destroy() throws RemoteException {
        m12084b(5, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle getInterstitialAdapterInfo() throws RemoteException {
        Parcel a = m12085a(18, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final zzyo getVideoController() throws RemoteException {
        Parcel a = m12085a(26, m12086W());
        zzyo a2 = zzyr.m11102a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: h1 */
    public final Bundle mo16539h1() throws RemoteException {
        Parcel a = m12085a(19, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: i1 */
    public final zzanp mo16538i1() throws RemoteException {
        zzanp zzanpVar;
        Parcel a = m12085a(16, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzanpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
            zzanpVar = queryLocalInterface instanceof zzanp ? (zzanp) queryLocalInterface : new zzanr(readStrongBinder);
        }
        a.recycle();
        return zzanpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final boolean isInitialized() throws RemoteException {
        Parcel a = m12085a(13, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void pause() throws RemoteException {
        m12084b(8, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: q1 */
    public final zzano mo16537q1() throws RemoteException {
        zzano zzanoVar;
        Parcel a = m12085a(15, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzanoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
            zzanoVar = queryLocalInterface instanceof zzano ? (zzano) queryLocalInterface : new zzanq(readStrongBinder);
        }
        a.recycle();
        return zzanoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void resume() throws RemoteException {
        m12084b(9, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showInterstitial() throws RemoteException {
        m12084b(4, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final void showVideo() throws RemoteException {
        m12084b(12, m12086W());
    }

    @Override // com.google.android.gms.internal.ads.zzang
    /* renamed from: x */
    public final void mo16536x(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(21, W);
    }

    @Override // com.google.android.gms.internal.ads.zzang
    public final Bundle zztv() throws RemoteException {
        Parcel a = m12085a(17, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }
}
