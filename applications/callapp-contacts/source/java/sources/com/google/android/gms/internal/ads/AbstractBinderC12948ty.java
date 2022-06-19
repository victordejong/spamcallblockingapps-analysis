package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ty */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ty.class */
public abstract class AbstractBinderC12948ty extends dvd implements AbstractC12949tz {
    public AbstractBinderC12948ty() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12941tr c12941tr;
        switch (i) {
            case 1:
                mo14128a();
                break;
            case 2:
                mo14125b();
                break;
            case 3:
                mo14124c();
                break;
            case 4:
                mo14123d();
                break;
            case 5:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    c12941tr = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    c12941tr = queryLocalInterface instanceof AbstractC12939tp ? (AbstractC12939tp) queryLocalInterface : new C12941tr(readStrongBinder);
                }
                mo14126a(c12941tr);
                break;
            case 6:
                mo14122e();
                break;
            case 7:
                mo14127a(parcel.readInt());
                break;
            case 8:
                mo14121f();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
