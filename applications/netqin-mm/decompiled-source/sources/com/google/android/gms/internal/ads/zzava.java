package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzava.class */
public final class zzava extends zzgu implements zzauy {
    public zzava(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: G */
    public final Bundle mo10911G() throws RemoteException {
        Parcel a = m12085a(9, m12086W());
        Bundle bundle = (Bundle) zzgw.m12080a(a, Bundle.CREATOR);
        a.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: R1 */
    public final zzaux mo10910R1() throws RemoteException {
        zzaux zzauxVar;
        Parcel a = m12085a(11, m12086W());
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzauxVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            zzauxVar = queryLocalInterface instanceof zzaux ? (zzaux) queryLocalInterface : new zzauz(readStrongBinder);
        }
        a.recycle();
        return zzauxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final String mo10909a() throws RemoteException {
        Parcel a = m12085a(4, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10908a(IObjectWrapper iObjectWrapper, boolean z) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12078a(W, z);
        m12084b(10, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10907a(zzavd zzavdVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzavdVar);
        m12084b(2, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10905a(zzavl zzavlVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzavlVar);
        m12084b(6, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10904a(zzavt zzavtVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzavtVar);
        m12084b(7, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10903a(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, zzavgVar);
        m12084b(1, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10902a(zzyh zzyhVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzyhVar);
        m12084b(8, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: a */
    public final void mo10901a(zzyi zzyiVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, zzyiVar);
        m12084b(13, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: b */
    public final void mo10900b(zzvg zzvgVar, zzavg zzavgVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12079a(W, zzvgVar);
        zzgw.m12081a(W, zzavgVar);
        m12084b(14, W);
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    public final boolean isLoaded() throws RemoteException {
        Parcel a = m12085a(3, m12086W());
        boolean a2 = zzgw.m12082a(a);
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: l */
    public final zzyn mo10899l() throws RemoteException {
        Parcel a = m12085a(12, m12086W());
        zzyn a2 = zzym.m11116a(a.readStrongBinder());
        a.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.zzauy
    /* renamed from: m */
    public final void mo10898m(IObjectWrapper iObjectWrapper) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        m12084b(5, W);
    }
}
