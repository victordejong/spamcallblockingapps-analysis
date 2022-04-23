package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauz.class */
public final class zzauz extends zzgu implements zzaux {
    public zzauz(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    public final String getType() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzaux
    /* renamed from: y */
    public final int mo16293y() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        int readInt = a.readInt();
        a.recycle();
        return readInt;
    }
}
