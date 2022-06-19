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
    public static Executor f4509a;

    /* renamed from: b */
    public static Handler f4510b;

    /* renamed from: com.mopub.common.util.AsyncTasks$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/common/util/AsyncTasks$a.class */
    public static final class RunnableC1061a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AsyncTask f4511a;

        /* renamed from: b */
        public final /* synthetic */ Object[] f4512b;

        public RunnableC1061a(AsyncTask asyncTask, Object[] objArr) {
            this.f4511a = asyncTask;
            this.f4512b = objArr;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f4511a.executeOnExecutor(AsyncTasks.f4509a, this.f4512b);
        }
    }

    static {
        m3793b();
    }

    /* renamed from: b */
    public static void m3793b() {
        f4509a = AsyncTask.THREAD_POOL_EXECUTOR;
        f4510b = new Handler(Looper.getMainLooper());
    }

    public static <P> void safeExecuteOnExecutor(AsyncTask<P, ?, ?> asyncTask, P... pArr) {
        Preconditions.checkNotNull(asyncTask, "Unable to execute null AsyncTask.");
        if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(f4509a, pArr);
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Posting AsyncTask to main thread for execution.");
        f4510b.post(new RunnableC1061a(asyncTask, pArr));
    }

    @VisibleForTesting
    public static void setExecutor(Executor executor) {
        f4509a = executor;
    }
}
