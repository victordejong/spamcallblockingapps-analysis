package com.huawei.hms.framework.common;

import android.content.Context;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/framework/common/AssetsUtil.class */
public class AssetsUtil {
    private static final int GET_SP_TIMEOUT = 5;
    private static final String TAG = "AssetsUtil";
    private static final String THREAD_NAME = "AssetsUtil_Operate";
    private static final ExecutorService EXECUTOR_SERVICE = ExecutorsUtils.newSingleThreadExecutor(THREAD_NAME);

    public static String[] list(final Context context, final String str) {
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return new String[0];
        }
        FutureTask futureTask = new FutureTask(new Callable<String[]>() { // from class: com.huawei.hms.framework.common.AssetsUtil.1
            @Override // java.util.concurrent.Callable
            public String[] call() throws Exception {
                return context.getAssets().list(str);
            }
        });
        EXECUTOR_SERVICE.execute(futureTask);
        try {
            try {
                try {
                    try {
                        try {
                            String[] strArr = (String[]) futureTask.get(5L, TimeUnit.SECONDS);
                            futureTask.cancel(true);
                            return strArr;
                        } catch (TimeoutException e) {
                            Logger.m38040w(TAG, "get local config files from sp task timed out");
                            futureTask.cancel(true);
                            return new String[0];
                        }
                    } catch (ExecutionException e2) {
                        Logger.m38039w(TAG, "get local config files from sp task failed", e2);
                        futureTask.cancel(true);
                        return new String[0];
                    }
                } catch (InterruptedException e3) {
                    Logger.m38039w(TAG, "get local config files from sp task interrupted", e3);
                    futureTask.cancel(true);
                    return new String[0];
                }
            } catch (Exception e4) {
                Logger.m38040w(TAG, "get local config files from sp task occur unknown Exception");
                futureTask.cancel(true);
                return new String[0];
            }
        } catch (Throwable th) {
            futureTask.cancel(true);
            throw th;
        }
    }

    public static InputStream open(Context context, String str) throws IOException {
        InputStream inputStream;
        if (context == null) {
            Logger.m38040w(TAG, "context is null");
            return null;
        }
        try {
            inputStream = context.getAssets().open(str);
        } catch (RuntimeException e) {
            Logger.m38046e(TAG, "AssetManager has been destroyed", e);
            inputStream = null;
        }
        return inputStream;
    }
}
