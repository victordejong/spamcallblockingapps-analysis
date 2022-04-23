package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mv.class */
public final class mv extends dvb implements mt {
    /* JADX INFO: Access modifiers changed from: package-private */
    public mv(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.mt
    public final b a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        b a2 = b.a.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mt
    public final boolean b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }
}
