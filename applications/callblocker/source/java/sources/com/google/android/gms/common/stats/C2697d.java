package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.C2723t;
import java.util.List;
/* renamed from: com.google.android.gms.common.stats.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/d.class */
public class C2697d {

    /* renamed from: b */
    private static Boolean f7497b;

    /* renamed from: a */
    private static C2697d f7496a = new C2697d();

    /* renamed from: c */
    private static boolean f7498c = false;

    /* renamed from: a */
    public static C2697d m13886a() {
        return f7496a;
    }

    /* renamed from: a */
    private static void m13885a(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(C2695b.f7487a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    /* renamed from: b */
    private static boolean m13883b() {
        if (f7497b == null) {
            f7497b = false;
        }
        return f7497b.booleanValue();
    }

    /* renamed from: a */
    public void m13884a(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (!m13883b()) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(str);
            Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
        } else if (7 != i && 8 != i && 10 != i && 11 != i) {
        } else {
            m13885a(context, new WakeLockEvent(System.currentTimeMillis(), i, str2, i2, C2696c.m13887a(list), str, SystemClock.elapsedRealtime(), C2723t.m13809a(context), str3, C2696c.m13888a(context.getPackageName()), C2723t.m13808b(context), j, str4, false));
        }
    }
}
