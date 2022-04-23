package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.dag;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dbb.class */
public class dbb<V> extends dbc<V> implements dag.i<V> {
    @Override // com.google.android.gms.internal.ads.dag, java.util.concurrent.Future
    public final V get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (V) super.get(j, timeUnit);
    }
}
