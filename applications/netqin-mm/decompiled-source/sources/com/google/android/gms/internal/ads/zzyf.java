package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzyf.class */
public final class zzyf extends zzgu implements zzyd {
    public zzyf(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMuteThisAdReason");
    }

    @Override // com.google.android.gms.internal.ads.zzyd
    /* renamed from: G1 */
    public final String mo10988G1() throws RemoteException {
        Parcel a = m12085a(1, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }

    @Override // com.google.android.gms.internal.ads.zzyd
    /* renamed from: v1 */
    public final String mo10987v1() throws RemoteException {
        Parcel a = m12085a(2, m12086W());
        String readString = a.readString();
        a.recycle();
        return readString;
    }
}
