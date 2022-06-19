package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.xu */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xu.class */
public final class C13054xu extends dvb implements AbstractC13053xt {
    public C13054xu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGeneratorCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC13053xt
    /* renamed from: a */
    public final AbstractC13048xo mo13990a(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm) throws RemoteException {
        C13050xq c13050xq;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(204890000);
        Parcel zza = zza(2, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c13050xq = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalGenerator");
            c13050xq = queryLocalInterface instanceof AbstractC13048xo ? (AbstractC13048xo) queryLocalInterface : new C13050xq(readStrongBinder);
        }
        zza.recycle();
        return c13050xq;
    }
}
