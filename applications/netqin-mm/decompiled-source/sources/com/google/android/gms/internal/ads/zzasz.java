package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzasz.class */
public abstract class zzasz extends zzgt implements zzasw {
    public zzasz() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            mo13941a((ParcelFileDescriptor) zzgw.m12080a(parcel, ParcelFileDescriptor.CREATOR));
        } else if (i != 2) {
            return false;
        } else {
            mo13940a((zzazy) zzgw.m12080a(parcel, zzazy.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
