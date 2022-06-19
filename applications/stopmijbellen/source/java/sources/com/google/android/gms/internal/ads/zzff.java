package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzff.class */
public final class zzff implements zzdz {
    @Override // com.google.android.gms.internal.ads.zzdz
    public final zzei zza(Looper looper, Handler.Callback callback) {
        return new zzfi(new Handler(looper, callback));
    }
}
