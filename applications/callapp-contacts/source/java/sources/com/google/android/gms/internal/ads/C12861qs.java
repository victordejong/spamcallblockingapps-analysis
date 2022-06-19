package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.AbstractC12126b;
/* renamed from: com.google.android.gms.internal.ads.qs */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/qs.class */
public final class C12861qs extends dvb implements AbstractC12859qq {
    public C12861qs(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12859qq
    /* renamed from: a */
    public final AbstractC12854ql mo14226a(AbstractC12126b abstractC12126b, AbstractC12746mm abstractC12746mm) throws RemoteException {
        C12856qn c12856qn;
        Parcel zzdp = zzdp();
        dvc.m15676a(zzdp, abstractC12126b);
        dvc.m15676a(zzdp, abstractC12746mm);
        zzdp.writeInt(204890000);
        Parcel zza = zza(1, zzdp);
        IBinder readStrongBinder = zza.readStrongBinder();
        if (readStrongBinder == null) {
            c12856qn = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            c12856qn = queryLocalInterface instanceof AbstractC12854ql ? (AbstractC12854ql) queryLocalInterface : new C12856qn(readStrongBinder);
        }
        zza.recycle();
        return c12856qn;
    }
}
