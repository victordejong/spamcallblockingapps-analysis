package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.tw */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tw.class */
public final class C12946tw extends dvb implements AbstractC12947tx {
    public C12946tw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12947tx
    /* renamed from: a */
    public final IBinder mo14129a(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(204890000);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
