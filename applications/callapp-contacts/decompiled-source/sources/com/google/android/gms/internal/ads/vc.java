package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/vc.class */
public final class vc extends dvb implements uz {
    /* JADX INFO: Access modifiers changed from: package-private */
    public vc(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.uz
    public final void a(ul ulVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, ulVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
