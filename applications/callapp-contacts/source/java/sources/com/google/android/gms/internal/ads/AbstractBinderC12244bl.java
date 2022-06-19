package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.bl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bl.class */
public abstract class AbstractBinderC12244bl extends dvd implements AbstractC12245bm {
    public AbstractBinderC12244bl() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String a = mo17712a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i == 2) {
            String b = mo17710b();
            parcel2.writeNoException();
            parcel2.writeString(b);
            return true;
        } else if (i == 3) {
            mo17711a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            mo17709c();
            parcel2.writeNoException();
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo17708d();
            parcel2.writeNoException();
            return true;
        }
    }
}
