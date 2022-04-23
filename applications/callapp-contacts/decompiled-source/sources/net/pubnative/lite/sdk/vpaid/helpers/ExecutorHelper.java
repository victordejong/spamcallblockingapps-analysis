package net.pubnative.lite.sdk.vpaid.helpers;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/helpers/ExecutorHelper.class */
public class ExecutorHelper {
    private static final ExecutorService sExecutor = Executors.newCachedThreadPool();
    private static final ExecutorService sSingleExecutor = Executors.newSingleThreadExecutor();

    private ExecutorHelper() {
    }

    public static ExecutorService getExecutor() {
        return sExecutor;
    }

    public static ExecutorService getSingleExecutor() {
        return sSingleExecutor;
    }

    public static void shutdown() {
        sExecutor.shutdown();
    }
}
