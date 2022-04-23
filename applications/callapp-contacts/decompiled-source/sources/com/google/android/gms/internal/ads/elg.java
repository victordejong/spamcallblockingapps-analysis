package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/elg.class */
public final class elg extends dvb implements ele {
    /* JADX INFO: Access modifiers changed from: package-private */
    public elg(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAppEventListener");
    }

    @Override // com.google.android.gms.internal.ads.ele
    public final void a(String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(1, zzdp);
    }
}
