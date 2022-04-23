package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xq.class */
public final class xq extends dvb implements xo {
    /* JADX INFO: Access modifiers changed from: package-private */
    public xq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final b a(b bVar, b bVar2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, bVar2);
        Parcel zza = zza(3, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(b bVar, zzazi zzaziVar, xn xnVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, zzaziVar);
        dvc.a(zzdp, xnVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(zzatj zzatjVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzatjVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void a(List<Uri> list, b bVar, ro roVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, roVar);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final b b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        Parcel zza = zza(4, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.xo
    public final void b(List<Uri> list, b bVar, ro roVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeTypedList(list);
        dvc.a(zzdp, bVar);
        dvc.a(zzdp, roVar);
        zzb(6, zzdp);
    }
}
