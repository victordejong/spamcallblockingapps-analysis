package com.google.android.gms.common.providers;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ScheduledExecutorService;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider.class */
public class PooledExecutorsProvider {

    /* renamed from: a */
    private static PooledExecutorFactory f7579a;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory.class */
    public interface PooledExecutorFactory {
        @KeepForSdk
        /* renamed from: a */
        ScheduledExecutorService mo14397a();
    }

    private PooledExecutorsProvider() {
    }

    @KeepForSdk
    /* renamed from: a */
    public static PooledExecutorFactory m14398a() {
        PooledExecutorFactory pooledExecutorFactory;
        synchronized (PooledExecutorsProvider.class) {
            try {
                if (f7579a == null) {
                    f7579a = new zza();
                }
                pooledExecutorFactory = f7579a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pooledExecutorFactory;
    }
}
