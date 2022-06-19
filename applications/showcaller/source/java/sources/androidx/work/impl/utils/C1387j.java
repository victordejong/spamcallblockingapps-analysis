package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC1404j;
import java.util.HashMap;
import java.util.WeakHashMap;
/* renamed from: androidx.work.impl.utils.j */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/j.class */
public class C1387j {

    /* renamed from: a */
    private static final String f5689a = AbstractC1404j.m30159f("WakeLocks");

    /* renamed from: b */
    private static final WeakHashMap<PowerManager.WakeLock, String> f5690b = new WeakHashMap<>();

    /* renamed from: a */
    public static void m30181a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f5690b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC1404j.m30161c().mo30154h(f5689a, String.format("WakeLock held for %s", hashMap.get(wakeLock)), new Throwable[0]);
            }
        }
    }

    /* renamed from: b */
    public static PowerManager.WakeLock m30180b(Context context, String str) {
        String str2 = "WorkManager: " + str;
        PowerManager.WakeLock newWakeLock = ((PowerManager) context.getApplicationContext().getSystemService("power")).newWakeLock(1, str2);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f5690b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, str2);
        }
        return newWakeLock;
    }
}
