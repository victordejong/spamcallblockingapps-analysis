package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzawf.class */
final /* synthetic */ class zzawf implements zzazm {
    static final zzazm zzbyi = new zzawf();

    private zzawf() {
    }

    @Override // com.google.android.gms.internal.ads.zzazm
    public final Object apply(Object obj) {
        IBinder iBinder = (IBinder) obj;
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCreator");
        return queryLocalInterface instanceof zzavs ? (zzavs) queryLocalInterface : new zzavv(iBinder);
    }
}
