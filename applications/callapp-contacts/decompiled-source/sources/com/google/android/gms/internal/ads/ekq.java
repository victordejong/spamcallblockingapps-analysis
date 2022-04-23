package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekq.class */
public final class ekq extends dvb implements eko {
    /* JADX INFO: Access modifiers changed from: package-private */
    public ekq(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final void a(zzvq zzvqVar, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvqVar);
        zzdp.writeInt(i);
        zzb(5, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final boolean a() throws RemoteException {
        Parcel zza = zza(3, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.eko
    public final String c() throws RemoteException {
        Parcel zza = zza(4, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }
}
