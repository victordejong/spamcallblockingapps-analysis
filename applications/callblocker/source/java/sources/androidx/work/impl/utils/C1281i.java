package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC1293l;
import java.util.HashMap;
import java.util.WeakHashMap;
/* renamed from: androidx.work.impl.utils.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public class C1281i {

    /* renamed from: a */
    private static final String f4302a = AbstractC1293l.m17541a("WakeLocks");

    /* renamed from: b */
    private static final WeakHashMap<PowerManager.WakeLock, String> f4303b = new WeakHashMap<>();

    /* renamed from: a */
    public static PowerManager.WakeLock m17562a(Context context, String str) {
        String str2 = "WorkManager: " + str;
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, str2);
        synchronized (f4303b) {
            f4303b.put(newWakeLock, str2);
        }
        return newWakeLock;
    }

    /* renamed from: a */
    public static void m17563a() {
        HashMap hashMap = new HashMap();
        synchronized (f4303b) {
            hashMap.putAll(f4303b);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC1293l.m17543a().mo17537d(f4302a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
    }
}
