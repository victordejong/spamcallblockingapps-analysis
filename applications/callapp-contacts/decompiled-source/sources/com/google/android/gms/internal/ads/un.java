package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/un.class */
public final class un extends dvb implements ul {
    /* JADX INFO: Access modifiers changed from: package-private */
    public un(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.ul
    public final String a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.ul
    public final int b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
