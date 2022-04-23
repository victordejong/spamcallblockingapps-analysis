package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/content/WakefulBroadcastReceiver.class */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a */
    private static final SparseArray<PowerManager.WakeLock> f3958a = new SparseArray<>();

    /* renamed from: b */
    private static int f3959b = 1;

    /* renamed from: b */
    public static boolean m18267b(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        synchronized (f3958a) {
            PowerManager.WakeLock wakeLock = f3958a.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                f3958a.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
            return true;
        }
    }

    /* renamed from: c */
    public static ComponentName m18266c(Context context, Intent intent) {
        synchronized (f3958a) {
            int i = f3959b;
            int i2 = f3959b + 1;
            f3959b = i2;
            if (i2 <= 0) {
                f3959b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(60000L);
            f3958a.put(i, newWakeLock);
            return startService;
        }
    }
}
