package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.zza;
import java.util.List;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/stats/WakeLockTracker.class */
public class WakeLockTracker {

    /* renamed from: a */
    private static WakeLockTracker f7638a = new WakeLockTracker();

    /* renamed from: b */
    private static Boolean f7639b;

    @KeepForSdk
    /* renamed from: a */
    public static WakeLockTracker m14362a() {
        return f7638a;
    }

    /* renamed from: d */
    private static void m14359d(Context context, WakeLockEvent wakeLockEvent) {
        try {
            context.startService(new Intent().setComponent(LoggingConstants.f7621a).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", wakeLockEvent));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }

    /* renamed from: e */
    private static boolean m14358e() {
        if (f7639b == null) {
            f7639b = Boolean.FALSE;
        }
        return f7639b.booleanValue();
    }

    @KeepForSdk
    /* renamed from: b */
    public void m14361b(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        m14360c(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    @KeepForSdk
    /* renamed from: c */
    public void m14360c(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (m14358e()) {
            if (TextUtils.isEmpty(str)) {
                String valueOf = String.valueOf(str);
                Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            } else if (7 == i || 8 == i || 10 == i || 11 == i) {
                m14359d(context, new WakeLockEvent(System.currentTimeMillis(), i, str2, i2, StatsUtils.m14368b(list), str, SystemClock.elapsedRealtime(), zza.m14292a(context), str3, StatsUtils.m14367c(context.getPackageName()), zza.m14291b(context), j, str4, false));
            }
        }
    }
}
