package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekr.class */
public final class ekr extends dvb implements ekp {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ekr(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final eko a() throws RemoteException {
        eko ekoVar;
        Parcel zza = zza(1, zzdp());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            ekoVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            ekoVar = queryLocalInterface instanceof eko ? (eko) queryLocalInterface : new ekq(readStrongBinder);
        }
        zza.recycle();
        return ekoVar;
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, adManagerAdViewOptions);
        zzb(15, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, publisherAdViewOptions);
        zzb(9, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(eki ekiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ekiVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(elk elkVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, elkVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(es esVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, esVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(ex exVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, exVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(fh fhVar, zzvt zzvtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, fhVar);
        dvc.a(zzdp, zzvtVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(fm fmVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, fmVar);
        zzb(10, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(jf jfVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, jfVar);
        zzb(14, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(zzaei zzaeiVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzaeiVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(zzajy zzajyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzajyVar);
        zzb(13, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.ekp
    public final void a(String str, fe feVar, ey eyVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, feVar);
        dvc.a(zzdp, eyVar);
        zzb(5, zzdp);
    }
}
