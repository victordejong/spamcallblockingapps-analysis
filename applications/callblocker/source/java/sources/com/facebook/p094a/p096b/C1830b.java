package com.facebook.p094a.p096b;

import android.app.Activity;
import android.content.Context;
import android.hardware.Sensor;
import android.hardware.SensorManager;
import android.os.Build;
import android.os.Bundle;
import com.facebook.C1803a;
import com.facebook.C2095j;
import com.facebook.C2102k;
import com.facebook.internal.C1994a;
import com.facebook.internal.C2048l;
import com.facebook.internal.C2050m;
import com.facebook.internal.C2079x;
import com.facebook.p094a.p096b.C1846f;
import com.facebook.p094a.p099d.C1862b;
import java.util.Locale;
import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.facebook.a.b.b */
/* loaded from: classes-dex2jar.jar:com/facebook/a/b/b.class */
public final class C1830b {

    /* renamed from: b */
    private static SensorManager f5575b;

    /* renamed from: c */
    private static C1840e f5576c;

    /* renamed from: d */
    private static String f5577d;

    /* renamed from: a */
    private static final C1846f f5574a = new C1846f();

    /* renamed from: e */
    private static final AtomicBoolean f5578e = new AtomicBoolean(true);

    /* renamed from: f */
    private static Boolean f5579f = false;

    /* renamed from: g */
    private static volatile Boolean f5580g = false;

    /* renamed from: a */
    public static void m16161a() {
        f5578e.set(true);
    }

    /* renamed from: a */
    public static void m16160a(Activity activity) {
        if (!f5578e.get()) {
            return;
        }
        C1833c.m16146a().m16145a(activity);
        Context applicationContext = activity.getApplicationContext();
        final String m15356l = C2095j.m15356l();
        final C2048l m15586a = C2050m.m15586a(m15356l);
        if (m15586a == null || !m15586a.m15597i()) {
            return;
        }
        f5575b = (SensorManager) applicationContext.getSystemService("sensor");
        if (f5575b == null) {
            return;
        }
        Sensor defaultSensor = f5575b.getDefaultSensor(1);
        f5576c = new C1840e(activity);
        f5574a.m16110a(new C1846f.AbstractC1847a() { // from class: com.facebook.a.b.b.1
            @Override // com.facebook.p094a.p096b.C1846f.AbstractC1847a
            /* renamed from: a */
            public void mo16109a() {
                boolean z = false;
                boolean z2 = m15586a != null && m15586a.m15597i();
                if (C2095j.m15351q()) {
                    z = true;
                }
                if (!z2 || !z) {
                    return;
                }
                C1830b.m16150c(m15356l);
            }
        });
        f5575b.registerListener(f5574a, defaultSensor, 2);
        if (m15586a == null || !m15586a.m15597i()) {
            return;
        }
        f5576c.m16123a();
    }

    /* renamed from: a */
    public static void m16159a(Boolean bool) {
        f5579f = bool;
    }

    /* renamed from: b */
    public static void m16157b() {
        f5578e.set(false);
    }

    /* renamed from: b */
    public static void m16156b(Activity activity) {
        if (!f5578e.get()) {
            return;
        }
        C1833c.m16146a().m16141b(activity);
        if (f5576c != null) {
            f5576c.m16117b();
        }
        if (f5575b == null) {
            return;
        }
        f5575b.unregisterListener(f5574a);
    }

    /* renamed from: c */
    public static String m16153c() {
        if (f5577d == null) {
            f5577d = UUID.randomUUID().toString();
        }
        return f5577d;
    }

    /* renamed from: c */
    public static void m16152c(Activity activity) {
        C1833c.m16146a().m16139c(activity);
    }

    /* renamed from: c */
    public static void m16150c(final String str) {
        if (f5580g.booleanValue()) {
            return;
        }
        f5580g = true;
        C2095j.m15362f().execute(new Runnable() { // from class: com.facebook.a.b.b.2
            @Override // java.lang.Runnable
            public void run() {
                C2102k m15337a = C2102k.m15337a((C1803a) null, String.format(Locale.US, "%s/app_indexing_session", str), (JSONObject) null, (C2102k.AbstractC2108b) null);
                Bundle m15302e = m15337a.m15302e();
                Bundle bundle = m15302e;
                if (m15302e == null) {
                    bundle = new Bundle();
                }
                C1994a m15694b = C1994a.m15694b(C2095j.m15360h());
                JSONArray jSONArray = new JSONArray();
                jSONArray.put(Build.MODEL != null ? Build.MODEL : "");
                if (m15694b == null || m15694b.m15695b() == null) {
                    jSONArray.put("");
                } else {
                    jSONArray.put(m15694b.m15695b());
                }
                jSONArray.put("0");
                jSONArray.put(C1862b.m16061c() ? "1" : "0");
                Locale m15445c = C2079x.m15445c();
                jSONArray.put(m15445c.getLanguage() + "_" + m15445c.getCountry());
                String jSONArray2 = jSONArray.toString();
                bundle.putString("device_session_id", C1830b.m16153c());
                bundle.putString("extinfo", jSONArray2);
                m15337a.m15341a(bundle);
                JSONObject m14980b = m15337a.m15293i().m14980b();
                Boolean unused = C1830b.f5579f = Boolean.valueOf(m14980b != null && m14980b.optBoolean("is_app_indexing_enabled", false));
                if (!C1830b.f5579f.booleanValue()) {
                    String unused2 = C1830b.f5577d = null;
                } else if (C1830b.f5576c != null) {
                    C1830b.f5576c.m16123a();
                }
                Boolean unused3 = C1830b.f5580g = false;
            }
        });
    }

    /* renamed from: d */
    public static boolean m16149d() {
        return f5579f.booleanValue();
    }
}
