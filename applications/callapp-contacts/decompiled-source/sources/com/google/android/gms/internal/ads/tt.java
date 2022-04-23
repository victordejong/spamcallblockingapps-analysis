package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/tt.class */
public final class tt extends dvb implements tq {
    /* JADX INFO: Access modifiers changed from: package-private */
    public tt(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
    }

    @Override // com.google.android.gms.internal.ads.tq
    public final void a(tp tpVar, String str, String str2) throws RemoteException {
        Parcel zzdp = zzdp();
        dvc.a(zzdp, tpVar);
        zzdp.writeString(str);
        zzdp.writeString(str2);
        zzb(2, zzdp);
    }
}
