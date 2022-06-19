package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.tu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tu.class */
public final class C12944tu extends dvb implements AbstractC12942ts {
    public C12944tu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14151a() throws RemoteException {
        zzb(2, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14150a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(18, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14149a(ekz ekzVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekzVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14148a(AbstractC12940tq abstractC12940tq) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12940tq);
        zzb(16, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14147a(AbstractC12949tz abstractC12949tz) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12949tz);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14146a(zzavt zzavtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzavtVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14145a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: a */
    public final void mo14144a(boolean z) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15673a(zzdp, z);
        zzb(34, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final Bundle mo14143b() throws RemoteException {
        Parcel zza = zza(15, zzdp());
        Bundle bundle = (Bundle) dvc.m15675a(zza, Bundle.CREATOR);
        zza.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final void mo14142b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: b */
    public final void mo14141b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(19, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final void mo14139c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final void mo14138c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(17, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: c */
    public final boolean mo14140c() throws RemoteException {
        Parcel zza = zza(5, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: d */
    public final void mo14137d() throws RemoteException {
        zzb(6, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: d */
    public final void mo14136d(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(11, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: e */
    public final void mo14135e() throws RemoteException {
        zzb(7, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: f */
    public final void mo14134f() throws RemoteException {
        zzb(8, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: g */
    public final String mo14133g() throws RemoteException {
        Parcel zza = zza(12, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: h */
    public final boolean mo14132h() throws RemoteException {
        Parcel zza = zza(20, zzdp());
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12942ts
    /* renamed from: i */
    public final emj mo14131i() throws RemoteException {
        Parcel zza = zza(21, zzdp());
        emj m14784a = emi.m14784a(zza.readStrongBinder());
        zza.recycle();
        return m14784a;
    }
}
