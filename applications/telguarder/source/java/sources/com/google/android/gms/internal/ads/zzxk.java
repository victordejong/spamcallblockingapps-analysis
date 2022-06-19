package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzxk.class */
public final class zzxk extends zzgw implements zzxi {
    public zzxk(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, adManagerAdViewOptions);
        zzb(15, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, publisherAdViewOptions);
        zzb(9, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzaeh zzaehVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaehVar);
        zzb(6, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafr zzafrVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafrVar);
        zzb(3, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzafs zzafsVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzafsVar);
        zzb(4, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagf zzagfVar, zzvs zzvsVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzagfVar);
        zzgx.zza(zzdo, zzvsVar);
        zzb(8, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzagg zzaggVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzaggVar);
        zzb(10, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzajt zzajtVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzajtVar);
        zzb(13, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(zzakb zzakbVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzakbVar);
        zzb(14, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zza(String str, zzafy zzafyVar, zzafx zzafxVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzdo.writeString(str);
        zzgx.zza(zzdo, zzafyVar);
        zzgx.zza(zzdo, zzafxVar);
        zzb(5, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzwx zzwxVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzwxVar);
        zzb(2, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final void zzb(zzxz zzxzVar) throws RemoteException {
        Parcel zzdo = zzdo();
        zzgx.zza(zzdo, zzxzVar);
        zzb(7, zzdo);
    }

    @Override // com.google.android.gms.internal.ads.zzxi
    public final zzxd zzqz() throws RemoteException {
        zzxf zzxfVar;
        Parcel zza = zza(1, zzdo());
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            zzxfVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            zzxfVar = queryLocalInterface instanceof zzxd ? (zzxd) queryLocalInterface : new zzxf(readStrongBinder);
        }
        zza.recycle();
        return zzxfVar;
    }
}
