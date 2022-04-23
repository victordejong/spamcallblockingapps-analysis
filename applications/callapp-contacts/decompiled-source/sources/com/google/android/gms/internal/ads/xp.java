package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/xp.class */
public final class xp extends dvb implements xn {
    /* JADX INFO: Access modifiers changed from: package-private */
    public xp(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalCallback");
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzb(2, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(1, zzdp);
    }

    @Override // com.google.android.gms.internal.ads.xn
    public final void a(String str, String str2, Bundle bundle) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        dvc.a(zzdp, bundle);
        zzb(3, zzdp);
    }
}
