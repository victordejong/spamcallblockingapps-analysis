package com.firstorion.libcyd;

import android.content.Context;
import android.support.annotation.NonNull;
import android.util.Log;
import androidx.work.ListenableWorker;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import com.firstorion.libcyd.PhoneStateReceiver;
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CleanAndRefreshWorker.class */
public class CleanAndRefreshWorker extends Worker {
    public CleanAndRefreshWorker(@NonNull Context context, @NonNull WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    @NonNull
    public ListenableWorker.Result doWork() {
        try {
            Log.i("libcyd.app", "Doing clean and refresh work");
            Context applicationContext = getApplicationContext();
            CYDApplication.getInstance().refreshFirstOrionFirebaseToken(applicationContext);
            CydContentManager.cleanExpiredContent(applicationContext, CYDApplication.getInstance().getTelemetryHost());
            if (PhoneStateReceiver.getCallState(applicationContext).equals(PhoneStateReceiver.CallState.Idle)) {
                boolean forceRemoveOverlay = CYDApplication.getInstance().forceRemoveOverlay(applicationContext);
                Log.d("libcyd.app", "removed overlay? " + forceRemoveOverlay);
            }
        } catch (Throwable th) {
            Log.e("libcyd.app", "Encountered an error while doing background task.", th);
        }
        return ListenableWorker.Result.success();
    }
}
