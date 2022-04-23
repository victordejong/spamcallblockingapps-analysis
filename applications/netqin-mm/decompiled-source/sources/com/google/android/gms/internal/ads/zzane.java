package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzane.class */
public abstract class zzane extends zzgt implements zzanb {
    public zzane() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    /* renamed from: a */
    public static zzanb m16637a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        return queryLocalInterface instanceof zzanb ? (zzanb) queryLocalInterface : new zzand(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            zzang r = mo16639r(parcel.readString());
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, r);
            return true;
        } else if (i == 2) {
            boolean w = mo16638w(parcel.readString());
            parcel2.writeNoException();
            zzgw.m12078a(parcel2, w);
            return true;
        } else if (i != 3) {
            return false;
        } else {
            zzaph n = mo16640n(parcel.readString());
            parcel2.writeNoException();
            zzgw.m12081a(parcel2, n);
            return true;
        }
    }
}
