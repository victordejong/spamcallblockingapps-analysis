package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsp.class */
public abstract class zzsp extends zzgt implements zzsq {
    public zzsp() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenFullScreenContentCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo11464Z0();
        } else if (i == 2) {
            mo11462k1();
        } else if (i != 3) {
            return false;
        } else {
            mo11463f((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
