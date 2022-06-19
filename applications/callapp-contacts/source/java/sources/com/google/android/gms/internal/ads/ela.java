package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ela.class */
public final class ela extends dvb implements ekx {
    public ela(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdManagerCreator");
    }

    @Override // com.google.android.gms.internal.ads.ekx
    /* renamed from: a */
    public final IBinder mo14812a(AbstractC12126b abstractC12126b, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm, int i) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15674a(zzdp, zzvtVar);
        zzdp.writeString(str);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(204890000);
        zzdp.writeInt(i);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        zza.recycle();
        return readStrongBinder;
    }
}
