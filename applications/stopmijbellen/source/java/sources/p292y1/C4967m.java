package p292y1;

import android.content.Context;
import android.os.PowerManager;
import com.google.android.gms.internal.ads.C1676a;
import java.util.WeakHashMap;
import p186o1.AbstractC3824h;
/* renamed from: y1.m */
/* loaded from: classes-dex2jar.jar:y1/m.class */
public class C4967m {

    /* renamed from: a */
    public static final String f15142a = AbstractC3824h.m1773e("WakeLocks");

    /* renamed from: b */
    public static final WeakHashMap<PowerManager.WakeLock, String> f15143b = new WeakHashMap<>();

    /* renamed from: a */
    public static PowerManager.WakeLock m171a(Context context, String str) {
        PowerManager powerManager = (PowerManager) context.getApplicationContext().getSystemService("power");
        String m4789h = C1676a.m4789h("WorkManager: ", str);
        PowerManager.WakeLock newWakeLock = powerManager.newWakeLock(1, m4789h);
        WeakHashMap<PowerManager.WakeLock, String> weakHashMap = f15143b;
        synchronized (weakHashMap) {
            weakHashMap.put(newWakeLock, m4789h);
        }
        return newWakeLock;
    }
}
