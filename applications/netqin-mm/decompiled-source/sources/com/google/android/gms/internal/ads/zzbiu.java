package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbiu.class */
public final class zzbiu extends zzgu implements zzbis {
    public zzbiu(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.measurement.IMeasurementManager");
    }

    @Override // com.google.android.gms.internal.ads.zzbis
    /* renamed from: a */
    public final void mo15433a(IObjectWrapper iObjectWrapper, zzbiq zzbiqVar) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzbiqVar);
        m12084b(2, W);
    }
}
