package com.google.android.gms.ads.internal.util;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
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
            boolean zzd = zzd(b.a.a(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
            parcel2.writeNoException();
            dvc.a(parcel2, zzd);
            return true;
        } else if (i != 2) {
            return false;
        } else {
            zzaq(b.a.a(parcel.readStrongBinder()));
            parcel2.writeNoException();
            return true;
        }
    }
}
