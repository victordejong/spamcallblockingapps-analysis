package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.internal.ads.dvc;
import com.google.android.gms.internal.ads.dvd;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbf.class */
public abstract class zzbf extends dvd implements zzbg {
    public zzbf() {
        super("com.google.android.gms.ads.internal.util.IWorkManagerUtil");
    }

    @Override // com.google.android.gms.internal.ads.dvd
    public final boolean zza(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            boolean zzd = zzd(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            dvc.m15673a(parcel2, zzd);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            zzaq(AbstractC12126b.AbstractBinderC12127a.m18981a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }
}
