package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.mu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mu.class */
public final class C12754mu extends dvb implements AbstractC12752ms {
    public C12754mu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14435a() throws RemoteException {
        zzb(1, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14434a(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14433a(int i, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzdp.writeString(str);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14432a(Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, bundle);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14431a(AbstractC12532eo abstractC12532eo, String str) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12532eo);
        zzdp.writeString(str);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14430a(AbstractC12758my abstractC12758my) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12758my);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14429a(AbstractC12962ul abstractC12962ul) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12962ul);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14428a(zzavy zzavyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzavyVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14427a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(23, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14426a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(12, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: a */
    public final void mo14425a(String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14424b() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14423b(int i) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeInt(i);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14422b(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvhVar);
        zzb(24, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: b */
    public final void mo14421b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: c */
    public final void mo14420c() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: d */
    public final void mo14419d() throws RemoteException {
        zzb(5, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: e */
    public final void mo14418e() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: f */
    public final void mo14417f() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: g */
    public final void mo14416g() throws RemoteException {
        zzb(11, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: h */
    public final void mo14415h() throws RemoteException {
        zzb(13, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: i */
    public final void mo14414i() throws RemoteException {
        zzb(15, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: j */
    public final void mo14413j() throws RemoteException {
        zzb(18, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12752ms
    /* renamed from: k */
    public final void mo14412k() throws RemoteException {
        zzb(20, zzdp());
    }
}
