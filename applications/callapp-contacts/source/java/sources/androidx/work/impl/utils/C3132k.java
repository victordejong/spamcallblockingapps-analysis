package androidx.work.impl.utils;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC3145k;
import java.util.HashMap;
import java.util.WeakHashMap;
/* renamed from: androidx.work.impl.utils.k */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/utils/k.class */
public final class C3132k {

    /* renamed from: a */
    private static final String f11470a = AbstractC3145k.m39275a("WakeLocks");

    /* renamed from: b */
    private static final WeakHashMap<PowerManager.WakeLock, String> f11471b = new WeakHashMap<>();

    private C3132k() {
    }

    /* renamed from: a */
    public static PowerManager.WakeLock m39287a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String concat = "WorkManager: ".concat(String.valueOf(str));
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, concat);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f11471b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, concat);
        }
        return newWakeLock;
    }

    /* renamed from: a */
    public static void m39288a() {
        HashMap hashMap = new HashMap();
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f11471b;
        synchronized (weakHashMap) {
            hashMap.putAll(weakHashMap);
        }
        for (PowerManager.WakeLock wakeLock : hashMap.keySet()) {
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC3145k.m39277a().mo39274a(f11470a, String.format("WakeLock held for %s", hashMap.get(wakeLock)));
            }
        }
    }
}
