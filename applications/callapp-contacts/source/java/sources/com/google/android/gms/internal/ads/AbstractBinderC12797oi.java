package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.oi */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/oi.class */
public abstract class AbstractBinderC12797oi extends dvd implements AbstractC12794of {
    public AbstractBinderC12797oi() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12755mv c12755mv;
        if (i == 1) {
            mo14304a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo14301a(parcel.readString());
        } else if (i == 3) {
            mo14302a((zzvh) dvc.m15675a(parcel, zzvh.CREATOR));
        } else if (i != 4) {
            return false;
        } else {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12755mv = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
                c12755mv = queryLocalInterface instanceof AbstractC12753mt ? (AbstractC12753mt) queryLocalInterface : new C12755mv(readStrongBinder);
            }
            mo14303a(c12755mv);
        }
        parcel2.writeNoException();
        return true;
    }
}
