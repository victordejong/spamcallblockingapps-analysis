package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.qo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qo.class */
public abstract class AbstractBinderC12857qo extends dvd implements AbstractC12854ql {
    public AbstractBinderC12857qo() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    /* renamed from: a */
    public static AbstractC12854ql m14231a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return queryLocalInterface instanceof AbstractC12854ql ? (AbstractC12854ql) queryLocalInterface : new C12856qn(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.dvd
    protected final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo14233a((Intent) dvc.m15675a(parcel, Intent.CREATOR));
        } else if (i == 2) {
            mo14232a(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo14234a();
        }
        parcel2.writeNoException();
        return true;
    }
}
