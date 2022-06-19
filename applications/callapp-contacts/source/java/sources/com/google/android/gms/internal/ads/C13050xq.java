package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.xq */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xq.class */
public final class C13050xq extends dvb implements AbstractC13048xo {
    public C13050xq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final AbstractC12126b mo13998a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        Parcel zza = zza(3, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13999a(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13997a(AbstractC12126b abstractC12126b, zzazi zzaziVar, AbstractC13047xn abstractC13047xn) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzaziVar);
        dvc.m15676a(zzdp, abstractC13047xn);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13996a(zzatj zzatjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzatjVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: a */
    public final void mo13995a(List<Uri> list, AbstractC12126b abstractC12126b, AbstractC12884ro abstractC12884ro) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12884ro);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: b */
    public final AbstractC12126b mo13994b(AbstractC12126b abstractC12126b) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        Parcel zza = zza(4, zzdp);
        AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(zza.readStrongBinder());
        zza.recycle();
        return m18981a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13048xo
    /* renamed from: b */
    public final void mo13993b(List<Uri> list, AbstractC12126b abstractC12126b, AbstractC12884ro abstractC12884ro) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12884ro);
        zzb(6, zzdp);
    }
}
