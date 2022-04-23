package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzauh.class */
public final class zzauh extends zzgu implements zzaue {
    public zzauh(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdCreator");
    }

    @Override // com.google.android.gms.internal.ads.zzaue
    /* renamed from: d */
    public final IBinder mo16340d(IObjectWrapper iObjectWrapper, zzanb zzanbVar, int i) throws RemoteException {
        Parcel W = m12086W();
        zzgw.m12081a(W, iObjectWrapper);
        zzgw.m12081a(W, zzanbVar);
        W.writeInt(i);
        Parcel a = m12085a(1, W);
        IBinder readStrongBinder = a.readStrongBinder();
        a.recycle();
        return readStrongBinder;
    }
}
