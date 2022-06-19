package com.google.android.gms.internal.ads;

import android.content.Intent;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.AbstractC6253a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/za0.class */
public abstract class za0 extends BinderC6649k2 implements ab0 {
    public za0() {
        super("com.google.android.gms.ads.internal.offline.IOfflineUtils");
    }

    /* renamed from: E6 */
    public static ab0 m8474E6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
        return queryLocalInterface instanceof ab0 ? (ab0) queryLocalInterface : new ya0(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.BinderC6649k2
    /* renamed from: D6 */
    protected final boolean mo8198D6(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i == 1) {
            mo8877K0((Intent) C6686l2.m13744c(parcel, Intent.CREATOR));
        } else if (i == 2) {
            mo8876O0(AbstractC6253a.AbstractBinderC6254a.m16746D0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            zzg();
        }
        parcel2.writeNoException();
        return true;
    }
}
