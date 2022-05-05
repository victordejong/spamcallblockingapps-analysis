package com.facebook.stetho.inspector.network;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import javax.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/network/AsyncPrettyPrinterExecutorHolder.class */
final class AsyncPrettyPrinterExecutorHolder {
    private static ExecutorService sExecutorService;

    private AsyncPrettyPrinterExecutorHolder() {
    }

    public static void ensureInitialized() {
        if (sExecutorService == null) {
            sExecutorService = Executors.newCachedThreadPool();
        }
    }

    @Nullable
    public static ExecutorService getExecutorService() {
        return sExecutorService;
    }

    public static void shutdown() {
        sExecutorService.shutdown();
        sExecutorService = null;
    }
}
