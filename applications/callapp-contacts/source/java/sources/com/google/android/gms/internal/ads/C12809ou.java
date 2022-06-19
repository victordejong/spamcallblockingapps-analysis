package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ou */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ou.class */
public final class C12809ou extends dvb implements AbstractC12807os {
    public C12809ou(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final zzaqr mo14284a() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.m15675a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14283a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14282a(AbstractC12126b abstractC12126b, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, AbstractC12812ox abstractC12812ox) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeString(str);
        dvc.m15674a(zzdp, bundle);
        dvc.m15674a(zzdp, bundle2);
        dvc.m15674a(zzdp, zzvtVar);
        dvc.m15676a(zzdp, abstractC12812ox);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14277a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14275a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12794of);
        dvc.m15676a(zzdp, abstractC12752ms);
        dvc.m15674a(zzdp, zzvtVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14274a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12799ok abstractC12799ok, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12799ok);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14273a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12800ol abstractC12800ol, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12800ol);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(18, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14272a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12800ol abstractC12800ol, AbstractC12752ms abstractC12752ms, zzaei zzaeiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12800ol);
        dvc.m15676a(zzdp, abstractC12752ms);
        dvc.m15674a(zzdp, zzaeiVar);
        zzb(22, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14271a(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12805oq);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: a */
    public final void mo14270a(String[] strArr, Bundle[] bundleArr) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeStringArray(strArr);
        zzdp.writeTypedArray(bundleArr, 0);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final zzaqr mo14269b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        zzaqr zzaqrVar = (zzaqr) dvc.m15675a(zza, zzaqr.CREATOR);
        zza.recycle();
        return zzaqrVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final void mo14265b(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12794of abstractC12794of, AbstractC12752ms abstractC12752ms, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12794of);
        dvc.m15676a(zzdp, abstractC12752ms);
        dvc.m15674a(zzdp, zzvtVar);
        zzb(21, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final void mo14264b(String str, String str2, zzvq zzvqVar, AbstractC12126b abstractC12126b, AbstractC12805oq abstractC12805oq, AbstractC12752ms abstractC12752ms) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12805oq);
        dvc.m15676a(zzdp, abstractC12752ms);
        zzb(20, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: b */
    public final boolean mo14268b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(15, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: c */
    public final emk mo14263c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        emk m14780a = emn.m14780a(zza.readStrongBinder());
        zza.recycle();
        return m14780a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12807os
    /* renamed from: c */
    public final boolean mo14262c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(17, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }
}
