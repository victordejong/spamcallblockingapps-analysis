package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazs.class */
public abstract class zzazs extends zzaok implements zzazt {
    public zzazs() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzaok
    public final boolean zzbQ(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzazx zzazxVar;
        zzazy zzazyVar;
        switch (i) {
            case 2:
                zzbhk zze = zze();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zze);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzazxVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    zzazxVar = queryLocalInterface instanceof zzazx ? (zzazx) queryLocalInterface : new zzazx(readStrongBinder);
                }
                zzj(zzazxVar);
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper asInterface = IObjectWrapper.Stub.asInterface(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    zzazyVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    zzazyVar = queryLocalInterface2 instanceof zzbaa ? (zzbaa) queryLocalInterface2 : new zzazy(readStrongBinder2);
                }
                zzi(asInterface, zzazyVar);
                parcel2.writeNoException();
                return true;
            case 5:
                zzbiw zzf = zzf();
                parcel2.writeNoException();
                zzaol.zzf(parcel2, zzf);
                return true;
            case 6:
                zzg(zzaol.zzg(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                zzh(zzbis.zzb(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
