package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.un */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/un.class */
public final class C12964un extends dvb implements AbstractC12962ul {
    public C12964un(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12962ul
    /* renamed from: a */
    public final String mo14076a() throws RemoteException {
        Parcel zza = zza(1, zzdp());
        String readString = zza.readString();
        zza.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12962ul
    /* renamed from: b */
    public final int mo14075b() throws RemoteException {
        Parcel zza = zza(2, zzdp());
        int readInt = zza.readInt();
        zza.recycle();
        return readInt;
    }
}
