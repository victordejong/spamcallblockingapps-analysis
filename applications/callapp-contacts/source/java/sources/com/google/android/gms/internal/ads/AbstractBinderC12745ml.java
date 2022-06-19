package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.ml */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ml.class */
public abstract class AbstractBinderC12745ml extends dvd implements AbstractC12746mm {
    public AbstractBinderC12745ml() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* renamed from: a */
    public static AbstractC12746mm m14488a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof AbstractC12746mm ? (AbstractC12746mm) queryLocalInterface : new C12748mo(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC12747mn a = mo14487a(parcel.readString());
            parcel2.writeNoException();
            dvc.m15676a(parcel2, a);
            return true;
        } else if (i == 2) {
            boolean b = mo14486b(parcel.readString());
            parcel2.writeNoException();
            dvc.m15673a(parcel2, b);
            return true;
        } else if (i == 3) {
            AbstractC12807os d = mo14484d(parcel.readString());
            parcel2.writeNoException();
            dvc.m15676a(parcel2, d);
            return true;
        } else if (i != 4) {
            return false;
        } else {
            boolean c = mo14485c(parcel.readString());
            parcel2.writeNoException();
            dvc.m15673a(parcel2, c);
            return true;
        }
    }
}
