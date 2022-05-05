package com.aotter.net.trek.common.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.aotter.net.trek.common.Preconditions;
import com.aotter.net.trek.util.TrekLog;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/aotter/net/trek/common/util/AsyncTasks.class */
public class AsyncTasks {

    /* renamed from: a */
    public static Executor f1528a;

    /* renamed from: b */
    public static Handler f1529b;

    static {
        m36343b();
    }

    /* renamed from: b */
    public static void m36343b() {
        f1528a = AsyncTask.THREAD_POOL_EXECUTOR;
        f1529b = new Handler(Looper.getMainLooper());
    }

    public static <P> void safeExecuteOnExecutor(@NonNull AsyncTask<P, ?, ?> asyncTask, @Nullable P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f1528a, pArr);
            return;
        }
        TrekLog.m36321c("Posting AsyncTask to main thread for execution.");
        f1529b.post(new RunnableC1750a(asyncTask, pArr));
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f1528a = executor;
    }
}
