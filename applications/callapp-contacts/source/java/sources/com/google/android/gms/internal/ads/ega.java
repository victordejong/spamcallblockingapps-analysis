package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ega.class */
public abstract class ega extends dvd implements egb {
    public ega() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        egj egjVar;
        egk egkVar;
        switch (i) {
            case 2:
                ekw a = mo15080a();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, a);
                return true;
            case 3:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    egjVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
                    egjVar = queryLocalInterface instanceof egh ? (egh) queryLocalInterface : new egj(readStrongBinder);
                }
                mo15078a(egjVar);
                parcel2.writeNoException();
                return true;
            case 4:
                AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 == null) {
                    egkVar = null;
                } else {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
                    egkVar = queryLocalInterface2 instanceof egi ? (egi) queryLocalInterface2 : new egk(readStrongBinder2);
                }
                mo15079a(m18981a, egkVar);
                parcel2.writeNoException();
                return true;
            case 5:
                emj b = mo15075b();
                parcel2.writeNoException();
                dvc.m15676a(parcel2, b);
                return true;
            case 6:
                mo15076a(dvc.m15677a(parcel));
                parcel2.writeNoException();
                return true;
            case 7:
                mo15077a(emh.m14785a(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
