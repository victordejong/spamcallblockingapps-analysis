package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.to */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/to.class */
public abstract class AbstractBinderC12938to extends dvd implements AbstractC12939tp {
    public AbstractBinderC12938to() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a = mo14154a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            int b = mo14153b();
            parcel2.writeNoException();
            parcel2.writeInt(b);
            return true;
        }
    }
}
