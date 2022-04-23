package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzapf.class */
public abstract class zzapf extends zzgt implements zzapg {
    public zzapf() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IRewardedCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 2) {
            mo16487r0();
        } else if (i == 3) {
            mo16488b(parcel.readString());
        } else if (i != 4) {
            return false;
        } else {
            mo16489a((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
