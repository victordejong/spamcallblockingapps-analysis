package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdzn.class */
public final /* synthetic */ class zzdzn implements zzfrk {
    public static final zzfrk zza = new zzdzn();

    private zzdzn() {
    }

    @Override // com.google.android.gms.internal.ads.zzfrk
    public final zzfsm zza(Object obj) {
        TimeoutException timeoutException = (TimeoutException) obj;
        return zzfsd.zzc(new zzdym(5));
    }
}
