package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.oo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oo.class */
public abstract class AbstractBinderC12803oo extends dvd implements AbstractC12800ol {
    public AbstractBinderC12803oo() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12771nj c12771nj;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12771nj = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
                c12771nj = queryLocalInterface instanceof AbstractC12769nh ? (AbstractC12769nh) queryLocalInterface : new C12771nj(readStrongBinder);
            }
            mo14297a(c12771nj);
        } else if (i == 2) {
            mo14295a(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo14296a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
