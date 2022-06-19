package net.pubnative.lite.sdk.utils;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.Executor;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/utils/PNAsyncUtils.class */
public class PNAsyncUtils {
    private static final String TAG = "PNAsyncUtils";
    private static Executor sExecutor = AsyncTask.THREAD_POOL_EXECUTOR;
    private static Handler sUiThreadHandler = new Handler(Looper.getMainLooper());

    public static <P> void safeExecuteOnExecutor(final AsyncTask<P, ?, ?> asyncTask, final P... pArr) {
        if (asyncTask == null) {
            Logger.m628e(TAG, "Error executing an AsyncTask that is null.");
        } else if (Looper.getMainLooper() == Looper.myLooper()) {
            asyncTask.executeOnExecutor(sExecutor, pArr);
        } else {
            Logger.m630d(TAG, "Posting task for execution on main thread.");
            sUiThreadHandler.post(new Runnable() { // from class: net.pubnative.lite.sdk.utils.PNAsyncUtils.1
                @Override // java.lang.Runnable
                public final void run() {
                    asyncTask.executeOnExecutor(PNAsyncUtils.sExecutor, pArr);
                }
            });
        }
    }
}
