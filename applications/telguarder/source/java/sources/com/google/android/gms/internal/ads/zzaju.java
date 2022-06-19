package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaju.class */
public abstract class zzaju extends zzgy implements zzajv {
    public zzaju() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzajy zzajyVar;
        if (i == 3) {
            zzzc videoController = getVideoController();
            parcel2.writeNoException();
            zzgx.zza(parcel2, videoController);
            return true;
        } else if (i == 4) {
            destroy();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzajyVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                zzajyVar = queryLocalInterface instanceof zzajw ? (zzajw) queryLocalInterface : new zzajy(readStrongBinder);
            }
            zza(asInterface, zzajyVar);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            zzr(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            zzaem zzty = zzty();
            parcel2.writeNoException();
            zzgx.zza(parcel2, zzty);
            return true;
        }
    }
}
