package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.mw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mw.class */
public abstract class AbstractBinderC12756mw extends dvd implements AbstractC12753mt {
    public AbstractBinderC12756mw() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            AbstractC12126b a = mo14438a();
            parcel2.writeNoException();
            dvc.m15676a(parcel2, a);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            boolean b = mo14437b();
            parcel2.writeNoException();
            dvc.m15673a(parcel2, b);
            return true;
        }
    }
}
