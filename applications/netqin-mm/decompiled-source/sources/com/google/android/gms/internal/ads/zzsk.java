package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzsk.class */
public abstract class zzsk extends zzgt implements zzsh {
    public zzsk() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    /* renamed from: a */
    public static zzsh m11470a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
        return queryLocalInterface instanceof zzsh ? (zzsh) queryLocalInterface : new zzsj(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzgt
    /* renamed from: a */
    public final boolean mo11101a(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        zzsg zzsgVar;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzsgVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zzsgVar = queryLocalInterface instanceof zzsg ? (zzsg) queryLocalInterface : new zzsi(readStrongBinder);
            }
            mo11473a(zzsgVar);
        } else if (i == 2) {
            mo11471k(parcel.readInt());
        } else if (i != 3) {
            return false;
        } else {
            mo11472d((zzva) zzgw.m12080a(parcel, zzva.CREATOR));
        }
        parcel2.writeNoException();
        return true;
    }
}
