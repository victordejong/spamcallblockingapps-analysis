package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekr.class */
public final class ekr extends dvb implements ekp {
    public ekr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final eko mo14695a() throws RemoteException {
        ekq ekqVar;
        Parcel zza = zza(1, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekqVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            ekqVar = queryLocalInterface instanceof eko ? (eko) queryLocalInterface : new ekq(readStrongBinder);
        }
        zza.recycle();
        return ekqVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14694a(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, adManagerAdViewOptions);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14693a(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, publisherAdViewOptions);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14692a(eki ekiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, ekiVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14691a(elk elkVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, elkVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14690a(AbstractC12536es abstractC12536es) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12536es);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14689a(AbstractC12541ex abstractC12541ex) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12541ex);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14687a(AbstractC12552fh abstractC12552fh, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12552fh);
        dvc.m15674a(zzdp, zzvtVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14686a(AbstractC12557fm abstractC12557fm) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12557fm);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14685a(AbstractC12658jf abstractC12658jf) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12658jf);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14684a(zzaei zzaeiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzaeiVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14683a(zzajy zzajyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15674a(zzdp, zzajyVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    /* renamed from: a */
    public final void mo14682a(String str, AbstractC12549fe abstractC12549fe, AbstractC12542ey abstractC12542ey) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12549fe);
        dvc.m15676a(zzdp, abstractC12542ey);
        zzb(5, zzdp);
    }
}
