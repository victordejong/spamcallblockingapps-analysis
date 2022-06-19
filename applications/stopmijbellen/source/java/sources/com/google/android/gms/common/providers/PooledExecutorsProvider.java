package com.google.android.gms.common.providers;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.ScheduledExecutorService;
@KeepForSdk
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider.class */
public class PooledExecutorsProvider {
    private static PooledExecutorFactory zza;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/providers/PooledExecutorsProvider$PooledExecutorFactory.class */
    public interface PooledExecutorFactory {
        @KeepForSdk
        @Deprecated
        ScheduledExecutorService newSingleThreadScheduledExecutor();
    }

    private PooledExecutorsProvider() {
    }

    @KeepForSdk
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
