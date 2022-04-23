package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzxm.class */
public final class zzxm extends zzgu implements zzxk {
    public zzxm(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.zzxk
    /* renamed from: a */
    public final void mo11141a(String str, String str2) throws RemoteException {
        Parcel W = m12086W();
        W.writeString(str);
        W.writeString(str2);
        m12084b(1, W);
    }
}
