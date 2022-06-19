package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
/* renamed from: com.google.android.gms.internal.ads.mo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/mo.class */
public final class C12748mo extends dvb implements AbstractC12746mm {
    public C12748mo(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: a */
    public final AbstractC12747mn mo14487a(String str) throws RemoteException {
        C12749mp c12749mp;
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12749mp = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapter");
            c12749mp = queryLocalInterface instanceof AbstractC12747mn ? (AbstractC12747mn) queryLocalInterface : new C12749mp(readStrongBinder);
        }
        zza.recycle();
        return c12749mp;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: b */
    public final boolean mo14486b(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(2, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: c */
    public final boolean mo14485c(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(4, zzdp);
        boolean m15677a = dvc.m15677a(zza);
        zza.recycle();
        return m15677a;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12746mm
    /* renamed from: d */
    public final AbstractC12807os mo14484d(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        Parcel zza = zza(3, zzdp);
        AbstractC12807os m14291a = AbstractBinderC12810ov.m14291a(zza.readStrongBinder());
        zza.recycle();
        return m14291a;
    }
}
