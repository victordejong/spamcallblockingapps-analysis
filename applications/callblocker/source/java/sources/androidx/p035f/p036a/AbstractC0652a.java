package androidx.p035f.p036a;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import android.util.Log;
import android.util.SparseArray;
@Deprecated
/* renamed from: androidx.f.a.a */
/* loaded from: classes-dex2jar.jar:androidx/f/a/a.class */
public abstract class AbstractC0652a extends BroadcastReceiver {

    /* renamed from: a */
    private static final SparseArray<PowerManager.WakeLock> f2251a = new SparseArray<>();

    /* renamed from: b */
    private static int f2252b = 1;

    /* renamed from: a */
    public static ComponentName m20024a(Context context, Intent intent) {
        ComponentName componentName;
        synchronized (f2251a) {
            int i = f2252b;
            f2252b++;
            if (f2252b <= 0) {
                f2252b = 1;
            }
            intent.putExtra("androidx.contentpager.content.wakelockid", i);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                componentName = null;
            } else {
                PowerManager.WakeLock newWakeLock = ((PowerManager) context.getSystemService("power")).newWakeLock(1, "androidx.core:wake:" + startService.flattenToShortString());
                newWakeLock.setReferenceCounted(false);
                newWakeLock.acquire(60000L);
                f2251a.put(i, newWakeLock);
                componentName = startService;
            }
        }
        return componentName;
    }

    /* renamed from: a */
    public static boolean m20023a(Intent intent) {
        boolean z = false;
        int intExtra = intent.getIntExtra("androidx.contentpager.content.wakelockid", 0);
        if (intExtra != 0) {
            synchronized (f2251a) {
                PowerManager.WakeLock wakeLock = f2251a.get(intExtra);
                if (wakeLock != null) {
                    wakeLock.release();
                    f2251a.remove(intExtra);
                    z = true;
                } else {
                    Log.w("WakefulBroadcastReceiv.", "No active wake lock id #" + intExtra);
                    z = true;
                }
            }
        }
        return z;
    }
}
