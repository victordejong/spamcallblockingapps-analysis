package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC0555f;
import java.util.HashMap;
import java.util.WeakHashMap;
/* renamed from: androidx.work.impl.utils.i */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/i.class */
public class C0606i {

    /* renamed from: a */
    private static final String f3152a = AbstractC0555f.m11738f("WakeLocks");

    /* renamed from: b */
    private static final WeakHashMap<PowerManager.WakeLock, String> f3153b = new WeakHashMap<>();

    /* renamed from: a */
    public static void m11597a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f3153b;
        synchronized (weakHashMap) {
            try {
                hashMap.putAll(weakHashMap);
            } catch (Throwable th) {
                throw th;
            }
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC0555f.m11741c().m11736h(f3152a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
    }

    /* renamed from: b */
    public static PowerManager.WakeLock m11596b(Context context, String str) {
        String str2 = "WorkManager: " + str;
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, str2);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f3153b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, str2);
        }
        return newWakeLock;
    }
}
