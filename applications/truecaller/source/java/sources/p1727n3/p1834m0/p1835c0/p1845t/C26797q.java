package p1727n3.p1834m0.p1835c0.p1845t;

import android.content.Context;
import android.os.PowerManager;
import java.util.WeakHashMap;
import p1727n3.p1834m0.AbstractC26839p;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: n3.m0.c0.t.q */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/q.class */
public class C26797q {

    /* renamed from: a */
    public static final String f74985a = AbstractC26839p.m1295e("WakeLocks");

    /* renamed from: b */
    public static final WeakHashMap<PowerManager.WakeLock, String> f74986b = new WeakHashMap<>();

    /* renamed from: a */
    public static PowerManager.WakeLock m1326a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String m8543z2 = C22128a.m8543z2("WorkManager: ", str);
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, m8543z2);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f74986b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, m8543z2);
        }
        return newWakeLock;
    }
}
