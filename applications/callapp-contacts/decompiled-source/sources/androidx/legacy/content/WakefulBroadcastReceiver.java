package androidx.legacy.content;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
import com.callapp.contacts.model.Constants;
@Deprecated
/* loaded from: classes-dex2jar.jar:androidx/legacy/content/WakefulBroadcastReceiver.class */
public abstract class WakefulBroadcastReceiver extends BroadcastReceiver {

    /* renamed from: a  reason: collision with root package name */
    private static final SparseArray<PowerManager.WakeLock> f2521a = new SparseArray<>();

    /* renamed from: b  reason: collision with root package name */
    private static int f2522b = 1;

    public static ComponentName a(Context context, Intent intent) {
        SparseArray<PowerManager.WakeLock> sparseArray = f2521a;
        synchronized (sparseArray) {
            int i = f2522b;
            int i2 = i + 1;
            f2522b = i2;
            if (i2 <= 0) {
                f2522b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            PowerManager powerManager = (PowerManager) context.getSystemService("power");
            PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
            newWakeLock.setReferenceCounted(false);
            newWakeLock.acquire(Constants.MINUTE_IN_MILLIS);
            sparseArray.put(i, newWakeLock);
            return startService;
        }
    }

    public static boolean a(Intent intent) {
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra == 0) {
            return false;
        }
        SparseArray<PowerManager.WakeLock> sparseArray = f2521a;
        synchronized (sparseArray) {
            PowerManager.WakeLock wakeLock = sparseArray.get(intExtra);
            if (wakeLock != null) {
                wakeLock.release();
                sparseArray.remove(intExtra);
                return true;
            }
            Log.w("WakefulBroadcastReceiv.", "No active wake lock id #".concat(String.valueOf(intExtra)));
            return true;
        }
    }
}
