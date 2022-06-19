package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.uu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/uu.class */
public abstract class AbstractBinderC12971uu extends dvd implements AbstractC12968ur {
    public AbstractBinderC12971uu() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12964un c12964un;
        switch (i) {
            case 1:
                mo14082a();
                break;
            case 2:
                mo14078b();
                break;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12964un = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                    c12964un = queryLocalInterface instanceof AbstractC12962ul ? (AbstractC12962ul) queryLocalInterface : new C12964un(readStrongBinder);
                }
                mo14080a(c12964un);
                break;
            case 4:
                mo14081a(parcel.readInt());
                break;
            case 5:
                mo14079a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
                break;
            case 6:
                mo14077c();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
