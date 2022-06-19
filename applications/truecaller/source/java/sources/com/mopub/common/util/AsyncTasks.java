package com.mopub.common.util;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/mopub/common/util/AsyncTasks.class */
public class AsyncTasks {

    /* renamed from: a */
    public static Executor f8696a = AsyncTask.THREAD_POOL_EXECUTOR;

    /* renamed from: b */
    public static Handler f8697b = new Handler(Looper.getMainLooper());

    /* renamed from: com.mopub.common.util.AsyncTasks$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/AsyncTasks$a.class */
    public static final class RunnableC2656a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AsyncTask f8698a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f8699b;

        public RunnableC2656a(AsyncTask asyncTask, Object[] objArr) {
            this.f8698a = asyncTask;
            this.f8699b = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f8698a.executeOnExecutor(AsyncTasks.f8696a, this.f8699b);
        }
    }

    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f8696a, pArr);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Posting AsyncTask to main thread for execution.");
        f8697b.post(new RunnableC2656a(asyncTask, pArr));
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f8696a = executor;
    }
}
