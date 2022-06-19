package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.dm */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dm.class */
public abstract class AbstractBinderC12379dm extends dvd implements AbstractC12371dj {
    public AbstractBinderC12379dm() {
        super("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
    }

    /* renamed from: a */
    public static AbstractC12371dj m16463a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IAttributionInfo");
        return queryLocalInterface instanceof AbstractC12371dj ? (AbstractC12371dj) queryLocalInterface : new C12377dl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            String a = mo16523a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            List<AbstractC12394dr> b = mo16522b();
            parcel2.writeNoException();
            parcel2.writeList(b);
            return true;
        }
    }
}
