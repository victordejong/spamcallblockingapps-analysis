package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzacj.class */
public abstract class zzacj extends zzgy implements zzacg {
    public zzacj() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // com.google.android.gms.internal.ads.zzgy
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String zzsq = zzsq();
            parcel2.writeNoException();
            parcel2.writeString(zzsq);
            return true;
        } else if (i == 2) {
            String content = getContent();
            parcel2.writeNoException();
            parcel2.writeString(content);
            return true;
        } else if (i == 3) {
            zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i == 4) {
            recordClick();
            parcel2.writeNoException();
            return true;
        } else if (i != 5) {
            return false;
        } else {
            recordImpression();
            parcel2.writeNoException();
            return true;
        }
    }
}
