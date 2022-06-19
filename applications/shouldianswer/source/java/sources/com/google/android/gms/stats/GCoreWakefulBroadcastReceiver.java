package com.google.android.gms.stats;

import android.content.Context;
import android.content.Intent;
import android.util.Log;
import androidx.p036g.p037a.AbstractC0757a;
import com.google.android.gms.common.stats.WakeLockTracker;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/stats/GCoreWakefulBroadcastReceiver.class */
public abstract class GCoreWakefulBroadcastReceiver extends AbstractC0757a {
    private static String TAG = "GCoreWakefulBroadcastReceiver";

    public static boolean completeWakefulIntent(Context context, Intent intent) {
        if (intent == null) {
            return false;
        }
        if (context != null) {
            WakeLockTracker.getInstance().registerReleaseEvent(context, intent);
        } else {
            String str = TAG;
            String valueOf = String.valueOf(intent.toUri(0));
            Log.w(str, valueOf.length() != 0 ? "context shouldn't be null. intent: ".concat(valueOf) : new String("context shouldn't be null. intent: "));
        }
        return AbstractC0757a.completeWakefulIntent(intent);
    }
}
