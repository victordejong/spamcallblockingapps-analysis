package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.ea */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ea.class */
public final class C12436ea extends dvb implements AbstractC12437eb {
    public C12436ea(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegateCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12437eb
    /* renamed from: a */
    public final IBinder mo15337a(AbstractC12126b abstractC12126b, AbstractC12126b abstractC12126b2, AbstractC12126b abstractC12126b3) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12126b2);
        dvc.m15676a(zzdp, abstractC12126b3);
        zzdp.writeInt(204890000);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
