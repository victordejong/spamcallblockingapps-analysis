package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzdyk;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdze.class */
public class zzdze<V> extends zzdzf<V> implements zzdyk.zzi<V> {
    @Override // com.google.android.gms.internal.ads.zzdyk, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (V) super.get(j, timeUnit);
    }
}
