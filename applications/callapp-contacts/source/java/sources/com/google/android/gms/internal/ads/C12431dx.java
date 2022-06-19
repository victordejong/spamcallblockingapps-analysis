package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.dx */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dx.class */
public final class C12431dx extends dvb implements AbstractC12428dv {
    public C12431dx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final AbstractC12126b mo14471a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14475a() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14474a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14473a(AbstractC12126b abstractC12126b, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzdp.writeInt(i);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14472a(AbstractC12389dq abstractC12389dq) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12389dq);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: a */
    public final void mo14470a(String str, AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: b */
    public final void mo14469b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: c */
    public final void mo14468c(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12428dv
    /* renamed from: d */
    public final void mo14467d(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(9, zzdp);
    }
}
