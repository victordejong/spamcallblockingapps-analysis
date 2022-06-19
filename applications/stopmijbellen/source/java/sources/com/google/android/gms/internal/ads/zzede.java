package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzede.class */
public final /* synthetic */ class zzede implements zzfvx {
    public static final /* synthetic */ zzede zza = new zzede();

    private /* synthetic */ zzede() {
    }

    @Override // com.google.android.gms.internal.ads.zzfvx
    public final zzfxa zza(Object obj) {
        TimeoutException timeoutException = (TimeoutException) obj;
        return zzfwq.zzh(new zzecd(5));
    }
}
