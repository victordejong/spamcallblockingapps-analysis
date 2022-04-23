package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import java.util.HashMap;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f6197a = androidx.work.k.a("WakeLocks");

    /* renamed from: b  reason: collision with root package name */
    private static final WeakHashMap<PowerManager.WakeLock, String> f6198b = new WeakHashMap<>();

    private k() {
    }

    public static PowerManager.WakeLock a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String concat = "WorkManager: ".concat(String.valueOf(str));
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, concat);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f6198b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, concat);
        }
        return newWakeLock;
    }

    public static void a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f6198b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                androidx.work.k.a().a(f6197a, String.format("WakeLock held for %s", hashMap.get(wakeLock)));
            }
        }
    }
}
