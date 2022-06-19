package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ekh.class */
public abstract class ekh extends dvd implements eki {
    public ekh() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                mo14824a();
                break;
            case 2:
                mo14823a(parcel.readInt());
                break;
            case 3:
                mo14821b();
                break;
            case 4:
                mo14820c();
                break;
            case 5:
                mo14819d();
                break;
            case 6:
                mo14818e();
                break;
            case 7:
                mo14817f();
                break;
            case 8:
                mo14822a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
