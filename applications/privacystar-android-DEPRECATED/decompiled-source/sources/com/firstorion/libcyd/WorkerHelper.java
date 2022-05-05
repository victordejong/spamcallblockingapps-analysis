package com.firstorion.libcyd;

import android.util.Log;
import androidx.work.ExistingPeriodicWorkPolicy;
import androidx.work.PeriodicWorkRequest;
import androidx.work.WorkManager;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/WorkerHelper.class */
public class WorkerHelper {
    private static final String CLEAN_REFRESH_TASK_TAG = "clean_refresh_task";

    WorkerHelper() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void scheduleCleanAndRefreshTask() {
        Log.i("libcyd.app", "Scheduling task - clean_refresh_task");
        WorkManager.getInstance().enqueueUniquePeriodicWork(CLEAN_REFRESH_TASK_TAG, ExistingPeriodicWorkPolicy.REPLACE, new PeriodicWorkRequest.Builder(CleanAndRefreshWorker.class, 1L, TimeUnit.DAYS, 1L, TimeUnit.HOURS).build());
    }
}
