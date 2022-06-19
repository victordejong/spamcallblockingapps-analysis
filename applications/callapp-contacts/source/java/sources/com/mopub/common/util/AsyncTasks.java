package com.mopub.common.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import java.util.concurrent.Executor;
/* loaded from: classes4-dex2jar.jar:com/mopub/common/util/AsyncTasks.class */
public class AsyncTasks {

    /* renamed from: a */
    private static Executor f59009a = AsyncTask.THREAD_POOL_EXECUTOR;

    /* renamed from: b */
    private static Handler f59010b = new Handler(Looper.getMainLooper());

    public static <P> void safeExecuteOnExecutor(final AsyncTask<P, ?, ?> asyncTask, final P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f59009a, pArr);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Posting AsyncTask to main thread for execution.");
        f59010b.post(new Runnable() { // from class: com.mopub.common.util.AsyncTasks.1
            @Override // java.lang.Runnable
            public final void run() {
                asyncTask.executeOnExecutor(AsyncTasks.f59009a, pArr);
            }
        });
    }

    public static void setExecutor(Executor executor) {
        f59009a = executor;
    }
}
