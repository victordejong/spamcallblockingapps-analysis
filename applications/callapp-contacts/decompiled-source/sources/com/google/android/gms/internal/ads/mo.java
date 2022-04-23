package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mo.class */
public final class mo extends dvb implements mm {
    /* JADX INFO: Access modifiers changed from: package-private */
    public mo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final mn a(String str) throws RemoteException {
        mn mnVar;
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            mnVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            mnVar = queryLocalInterface instanceof mn ? (mn) queryLocalInterface : new mp(readStrongBinder);
        }
        zza.recycle();
        return mnVar;
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final boolean b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final boolean c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(4, zzdp);
        boolean a2 = dvc.a(zza);
        zza.recycle();
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.mm
    public final os d(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(3, zzdp);
        os a2 = ov.a(zza.readStrongBinder());
        zza.recycle();
        return a2;
    }
}
