package com.facebook.appevents.p031m0;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import java.util.UUID;
import p193e.p1538j.C23228f0;
import s1.z.c.l;
/* renamed from: com.facebook.appevents.m0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/appevents/m0/c.class */
public final /* synthetic */ class RunnableC1030c implements Runnable {

    /* renamed from: a */
    public static final /* synthetic */ RunnableC1030c f2842a = new RunnableC1030c();

    @Override // java.lang.Runnable
    public final void run() {
        if (C1033f.f2852g == null) {
            C23228f0 c23228f0 = C23228f0.f64291a;
            SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a());
            long j = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionStartTime", 0L);
            long j2 = defaultSharedPreferences.getLong("com.facebook.appevents.SessionInfo.sessionEndTime", 0L);
            String string = defaultSharedPreferences.getString("com.facebook.appevents.SessionInfo.sessionId", null);
            C1044l c1044l = null;
            if (j != 0) {
                c1044l = null;
                if (j2 != 0) {
                    if (string == null) {
                        c1044l = null;
                    } else {
                        C1044l c1044l2 = new C1044l(Long.valueOf(j), Long.valueOf(j2), null, 4);
                        c1044l2.f2881d = defaultSharedPreferences.getInt("com.facebook.appevents.SessionInfo.interruptionCount", 0);
                        SharedPreferences defaultSharedPreferences2 = PreferenceManager.getDefaultSharedPreferences(C23228f0.m7354a());
                        c1044l2.f2883f = !defaultSharedPreferences2.contains("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage") ? null : new C1046n(defaultSharedPreferences2.getString("com.facebook.appevents.SourceApplicationInfo.callingApplicationPackage", null), defaultSharedPreferences2.getBoolean("com.facebook.appevents.SourceApplicationInfo.openedByApplink", false), null);
                        c1044l2.f2882e = Long.valueOf(System.currentTimeMillis());
                        UUID fromString = UUID.fromString(string);
                        l.d(fromString, "fromString(sessionIDStr)");
                        l.e(fromString, "<set-?>");
                        c1044l2.f2880c = fromString;
                        c1044l = c1044l2;
                    }
                }
            }
            C1033f.f2852g = c1044l;
        }
    }
}
