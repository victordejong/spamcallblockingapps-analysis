package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.jc */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/jc.class */
public abstract class AbstractBinderC12655jc extends dvd implements AbstractC12651iz {
    public AbstractBinderC12655jc() {
        super("com.google.android.gms.ads.internal.instream.client.IInstreamAd");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        C12659jg c12659jg;
        if (i == 3) {
            emk b = mo14588b();
            parcel2.writeNoException();
            dvc.m15676a(parcel2, b);
            return true;
        } else if (i == 4) {
            mo14587c();
            parcel2.writeNoException();
            return true;
        } else if (i == 5) {
            AbstractC12126b m18981a = AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder());
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                c12659jg = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.instream.client.IInstreamAdCallback");
                c12659jg = queryLocalInterface instanceof AbstractC12657je ? (AbstractC12657je) queryLocalInterface : new C12659jg(readStrongBinder);
            }
            mo14589a(m18981a, c12659jg);
            parcel2.writeNoException();
            return true;
        } else if (i == 6) {
            mo14590a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        } else if (i != 7) {
            return false;
        } else {
            AbstractC12389dq d = mo14586d();
            parcel2.writeNoException();
            dvc.m15676a(parcel2, d);
            return true;
        }
    }
}
