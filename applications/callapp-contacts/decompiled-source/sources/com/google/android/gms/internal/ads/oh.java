package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oh.class */
public final class oh extends dvb implements of {
    /* JADX INFO: Access modifiers changed from: package-private */
    public oh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(b bVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, bVar);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(mt mtVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, mtVar);
        zzb(4, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(zzvh zzvhVar) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, zzvhVar);
        zzb(3, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.of
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }
}
