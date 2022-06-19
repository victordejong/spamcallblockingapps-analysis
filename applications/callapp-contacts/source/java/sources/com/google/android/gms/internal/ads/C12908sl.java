package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.sl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/sl.class */
public final class C12908sl extends dvb implements AbstractC12906sj {
    public C12908sl(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final zzats mo14194a(zzatq zzatqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzatqVar);
        Parcel zza = zza(1, zzdp);
        zzats zzatsVar = (zzats) dvc.m15675a(zza, zzats.CREATOR);
        zza.recycle();
        return zzatsVar;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14193a(zzatq zzatqVar, AbstractC12912sp abstractC12912sp) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzatqVar);
        dvc.m15676a(zzdp, abstractC12912sp);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14192a(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaujVar);
        dvc.m15676a(zzdp, abstractC12914sr);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: a */
    public final void mo14191a(String str, AbstractC12914sr abstractC12914sr) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12914sr);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: b */
    public final void mo14190b(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaujVar);
        dvc.m15676a(zzdp, abstractC12914sr);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12906sj
    /* renamed from: c */
    public final void mo14189c(zzauj zzaujVar, AbstractC12914sr abstractC12914sr) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaujVar);
        dvc.m15676a(zzdp, abstractC12914sr);
        zzb(6, zzdp);
    }
}
