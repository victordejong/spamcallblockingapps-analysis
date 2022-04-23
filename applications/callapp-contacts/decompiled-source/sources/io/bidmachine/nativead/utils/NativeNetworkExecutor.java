package io.bidmachine.nativead.utils;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/utils/NativeNetworkExecutor.class */
public class NativeNetworkExecutor implements Executor {
    private static NativeNetworkExecutor executor;
    private ThreadPoolExecutor loaderExecutor;

    private NativeNetworkExecutor() {
        int availableProcessors = Runtime.getRuntime().availableProcessors() * 2;
        this.loaderExecutor = new ThreadPoolExecutor(availableProcessors, availableProcessors, 0L, TimeUnit.MICROSECONDS, new LinkedBlockingQueue());
    }

    public static NativeNetworkExecutor getInstance() {
        if (executor == null) {
            executor = new NativeNetworkExecutor();
        }
        return executor;
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.loaderExecutor.execute(runnable);
    }
}
