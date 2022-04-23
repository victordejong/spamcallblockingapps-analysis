package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzape.class */
public abstract class zzape extends zzgt implements zzapb {
    public zzape() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.INativeCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo16492a(zzant.m16635a(parcel.readStrongBinder()));
        } else if (i == 2) {
            mo16490b(parcel.readString());
        } else if (i != 3) {
            return false;
        } else {
            mo16491a((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
