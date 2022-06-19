package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzsn.class */
public abstract class zzsn extends zzgy implements zzsk {
    public zzsn() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzss zzssVar;
        zzsx zzsxVar;
        if (i == 2) {
            zzxl zzdx = zzdx();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzdx);
            return true;
        } else if (i == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzssVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                zzssVar = queryLocalInterface instanceof zzsq ? (zzsq) queryLocalInterface : new zzss(readStrongBinder);
            }
            zza(zzssVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 == null) {
                zzsxVar = null;
            } else {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                zzsxVar = queryLocalInterface2 instanceof zzsv ? (zzsv) queryLocalInterface2 : new zzsx(readStrongBinder2);
            }
            zza(asInterface, zzsxVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            zzyx zzki = zzki();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzki);
            return true;
        } else if (i != 6) {
            return false;
        } else {
            setImmersiveMode(zzgx.zza(parcel));
            parcel2.writeNoException();
            return true;
        }
    }
}
