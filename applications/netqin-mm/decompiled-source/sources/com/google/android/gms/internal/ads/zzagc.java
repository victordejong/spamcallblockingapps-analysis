package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzagc.class */
public abstract class zzagc extends zzgt implements zzafz {
    public zzagc() {
        super("com.google.android.gms.ads.internal.formats.client.IUnconfirmedClickListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16769g(parcel.readString());
        } else if (i != 2) {
            return false;
        } else {
            mo16768s0();
        }
        parcel2.writeNoException();
        return true;
    }
}
