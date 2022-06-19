package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ec */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ec.class */
public abstract class AbstractBinderC12438ec extends dvd implements AbstractC12439ed {
    public AbstractBinderC12438ec() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
    }

    /* renamed from: a */
    public static AbstractC12439ed m15293a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
        return queryLocalInterface instanceof AbstractC12439ed ? (AbstractC12439ed) queryLocalInterface : new C12441ef(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14516a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo14517a();
        } else if (i != 3) {
            return false;
        } else {
            mo14515b(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
        }
        parcel2.writeNoException();
        return true;
    }
}
