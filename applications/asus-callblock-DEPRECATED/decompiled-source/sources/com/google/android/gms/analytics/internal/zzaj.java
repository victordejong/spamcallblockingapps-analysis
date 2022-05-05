package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.bp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/analytics/internal/zzaj.class */
public final class zzaj {

    /* renamed from: a  reason: collision with root package name */
    static Object f3832a = new Object();

    /* renamed from: b  reason: collision with root package name */
    static bp f3833b;
    static Boolean c;

    public static boolean zzU(Context context) {
        boolean zzb;
        b.a(context);
        if (c != null) {
            zzb = c.booleanValue();
        } else {
            zzb = zzao.zzb(context, "com.google.android.gms.analytics.AnalyticsReceiver", false);
            c = Boolean.valueOf(zzb);
        }
        return zzb;
    }

    public final void onReceive(Context context, Intent intent) {
        zzf zzX = zzf.zzX(context);
        zzaf zzlR = zzX.zzlR();
        if (intent == null) {
            zzlR.zzbJ("AnalyticsReceiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (zzX.zzlS().zzmW()) {
            zzlR.zza("Device AnalyticsReceiver got", action);
        } else {
            zzlR.zza("Local AnalyticsReceiver got", action);
        }
        if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(action)) {
            boolean zzV = zzak.zzV(context);
            Intent intent2 = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            intent2.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
            intent2.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
            synchronized (f3832a) {
                context.startService(intent2);
                if (zzV) {
                    try {
                        if (f3833b == null) {
                            bp bpVar = new bp(context, "Analytics WakeLock");
                            f3833b = bpVar;
                            bpVar.c();
                        }
                        f3833b.a();
                    } catch (SecurityException e) {
                        zzlR.zzbJ("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
                    }
                }
            }
        }
    }
}
