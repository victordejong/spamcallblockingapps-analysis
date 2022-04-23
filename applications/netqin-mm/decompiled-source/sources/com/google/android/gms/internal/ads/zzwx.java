package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzwx.class */
public abstract class zzwx extends zzgt implements zzwu {
    public zzwx() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo11151a((zzvg) zzgw.m12080a(parcel, zzvg.CREATOR));
            parcel2.writeNoException();
            return true;
        } else if (i == 2) {
            String a = mo11152a();
            parcel2.writeNoException();
            parcel2.writeString(a);
            return true;
        } else if (i == 3) {
            boolean n = mo11148n();
            parcel2.writeNoException();
            zzgw.m12078a(parcel2, n);
            return true;
        } else if (i == 4) {
            String k0 = mo11149k0();
            parcel2.writeNoException();
            parcel2.writeString(k0);
            return true;
        } else if (i != 5) {
            return false;
        } else {
            mo11150a((zzvg) zzgw.m12080a(parcel, zzvg.CREATOR), parcel.readInt());
            parcel2.writeNoException();
            return true;
        }
    }
}
