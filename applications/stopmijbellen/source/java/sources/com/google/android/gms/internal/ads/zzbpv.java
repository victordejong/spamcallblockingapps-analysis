package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbpv.class */
public abstract class zzbpv extends zzaok implements zzbpw {
    public zzbpv() {
        super("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
    }

    public static zzbpw zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IOnUnifiedNativeAdLoadedListener");
        return queryLocalInterface instanceof zzbpw ? (zzbpw) queryLocalInterface : new zzbpu(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzbqd zzbqdVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzbqdVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IUnifiedNativeAd");
                zzbqdVar = queryLocalInterface instanceof zzbqf ? (zzbqf) queryLocalInterface : new zzbqd(readStrongBinder);
            }
            zze(zzbqdVar);
            parcel2.writeNoException();
            return true;
        }
        return false;
    }
}
