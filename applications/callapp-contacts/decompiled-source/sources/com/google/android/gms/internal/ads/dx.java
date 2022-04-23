package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dx.class */
public final class dx extends dvb implements dv {
    /* JADX INFO: Access modifiers changed from: package-private */
    public dx(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final b a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a() throws RemoteException {
        zzb(4, zzdp());
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(b bVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzdp.writeInt(i);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(dq dqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, dqVar);
        zzb(8, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void a(String str, b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        dvc.a(zzdp, bVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void b(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(6, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void c(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(7, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.dv
    public final void d(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(9, zzdp);
    }
}
