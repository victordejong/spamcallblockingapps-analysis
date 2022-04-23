package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/RescheduleReceiver.class */
public class RescheduleReceiver extends BroadcastReceiver {
    private static final String TAG = Logger.tagWithPrefix("RescheduleReceiver");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Logger.get().debug(TAG, String.format("Received intent %s", intent), new Throwable[0]);
        if (Build.VERSION.SDK_INT >= 23) {
            WorkManagerImpl instance = WorkManagerImpl.getInstance();
            if (instance == null) {
                Logger.get().error(TAG, "Cannot reschedule jobs. WorkManager needs to be initialized via a ContentProvider#onCreate() or an Application#onCreate().", new Throwable[0]);
            } else {
                instance.setReschedulePendingResult(goAsync());
            }
        } else {
            context.startService(CommandHandler.createRescheduleIntent(context));
        }
    }
}
