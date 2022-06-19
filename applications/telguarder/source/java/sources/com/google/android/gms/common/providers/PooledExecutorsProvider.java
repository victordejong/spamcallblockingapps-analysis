package com.google.android.gms.common.providers;

import java.util.concurrent.ScheduledExecutorService;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider.class */
public class PooledExecutorsProvider {
    private static PooledExecutorFactory zza;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory.class */
    public interface PooledExecutorFactory {
        @Deprecated
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    private PooledExecutorsProvider() {
    }

    @Deprecated
    public static PooledExecutorFactory getInstance() {
        PooledExecutorFactory pooledExecutorFactory;
        synchronized (PooledExecutorsProvider.class) {
            try {
                if (zza == null) {
                    zza = new zza();
                }
                pooledExecutorFactory = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return pooledExecutorFactory;
    }
}
