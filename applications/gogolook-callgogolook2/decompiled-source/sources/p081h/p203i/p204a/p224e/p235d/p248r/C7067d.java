package p081h.p203i.p204a.p224e.p235d.p248r;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.stats.WakeLockEvent;
import java.util.List;
import p081h.p203i.p204a.p224e.p235d.p249s.C7092u;
/* renamed from: h.i.a.e.d.r.d */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/r/d.class */
public class C7067d {

    /* renamed from: a */
    public static C7067d f17182a = new C7067d();

    /* renamed from: b */
    public static Boolean f17183b;

    /* renamed from: a */
    public static C7067d m21177a() {
        return f17182a;
    }

    /* renamed from: a */
    public static void m21176a(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(C7065b.f17181a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    /* renamed from: b */
    public static boolean m21173b() {
        if (f17183b == null) {
            f17183b = false;
        }
        return f17183b.booleanValue();
    }

    /* renamed from: a */
    public void m21175a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        m21174a(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    /* renamed from: a */
    public void m21174a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (m21173b()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            } else if (7 == i || 8 == i || 10 == i || 11 == i) {
                m21176a(context, new WakeLockEvent(System.currentTimeMillis(), i, str2, i2, C7066c.m21178a(list), str, SystemClock.elapsedRealtime(), C7092u.m21100a(context), str3, C7066c.m21179a(context.getPackageName()), C7092u.m21099b(context), j, str4, false));
            }
        }
    }
}
