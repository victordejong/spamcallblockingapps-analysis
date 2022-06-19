package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.us */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/us.class */
public final class C12969us extends dvb implements AbstractC12967uq {
    public C12969us(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final Bundle mo14103a() throws RemoteException {
        Parcel zza = zza(9, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14102a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14101a(AbstractC12126b abstractC12126b, boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15673a(zzdp, z);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14100a(emc emcVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, emcVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14099a(emd emdVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, emdVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14098a(AbstractC12968ur abstractC12968ur) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12968ur);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14097a(AbstractC12976uz abstractC12976uz) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12976uz);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14096a(zzaww zzawwVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzawwVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14095a(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12975uy);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: a */
    public final void mo14094a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final void mo14092b(zzvq zzvqVar, AbstractC12975uy abstractC12975uy) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzvqVar);
        dvc.m15676a(zzdp, abstractC12975uy);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: b */
    public final boolean mo14093b() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: c */
    public final String mo14091c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: d */
    public final AbstractC12962ul mo14090d() throws RemoteException {
        C12964un c12964un;
        Parcel zza = zza(11, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12964un = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
            c12964un = queryLocalInterface instanceof AbstractC12962ul ? (AbstractC12962ul) queryLocalInterface : new C12964un(readStrongBinder);
        }
        zza.recycle();
        return c12964un;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12967uq
    /* renamed from: e */
    public final emj mo14089e() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        emj m14784a = emi.m14784a(zza.readStrongBinder());
        zza.recycle();
        return m14784a;
    }
}
