package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqw.class */
public final class zzaqw extends zzgu implements zzaqu {
    public zzaqw(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.offline.IOfflineUtilsCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzaqu
    /* renamed from: a */
    public final zzaqp mo16409a(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) throws RemoteException {
        zzaqp zzaqpVar;
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(1, W);
        IBinder readStrongBinder = a.readStrongBinder();
        if (readStrongBinder == null) {
            zzaqpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            zzaqpVar = queryLocalInterface instanceof zzaqp ? (zzaqp) queryLocalInterface : new zzaqr(readStrongBinder);
        }
        a.recycle();
        return zzaqpVar;
    }
}
